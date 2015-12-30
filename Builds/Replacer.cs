using System;
using System.IO;

class CILSwapper
{
	static Int32 Main(String[] args)
	{
        if (args.Length < 4)
            return 3;
		String full = File.ReadAllText(args[0]);
        String[] originalFragmentPaths;
        String[] modifiedFragmentPaths;
        String[] originalReplacePaths;
        String modifiedReplacePath;
        if (Directory.Exists(args[2]))
        {
            if (args.Length < 6)
                return 3;
            originalFragmentPaths = Directory.GetFiles(args[2]);
            modifiedFragmentPaths = Directory.GetFiles(args[3]);
            originalReplacePaths = Directory.GetFiles(args[4]);
            modifiedReplacePath = args[5];
        }
        else if (File.Exists(args[2]))
        {
            originalFragmentPaths = new String[] { args[2] };
            modifiedFragmentPaths = new String[] { args[3] };
            originalReplacePaths = new String[0];
            modifiedReplacePath = String.Empty;
        }
        else
        {
            // Bad args
            return 3;
        }
		Int32 insertIndex = -1;

		foreach (String originalPath in originalFragmentPaths)
		{
			String originalFragment = File.ReadAllText(originalPath);
			Int32 start = full.IndexOf(originalFragment, StringComparison.Ordinal);
			if (start == -1)
			{
				// ERROR 
                Console.WriteLine("Contents of file " + originalPath + " not found!");
				return 1;
			}
			
			full = full.Substring(0, start) + full.Substring(start + originalFragment.Length);
			if (insertIndex == -1 || start < insertIndex)
				insertIndex = start;
		}

		foreach (String modifiedPath in modifiedFragmentPaths)
		{
			String modifiedFragment = File.ReadAllText(modifiedPath);
			full = full.Insert(insertIndex, modifiedFragment);
		}

		Console.WriteLine("Beginning replacements...");
		foreach (String originalPath in originalReplacePaths)
		{
			String originalFragment = File.ReadAllText(originalPath);
			Int32 start = full.IndexOf(originalFragment, StringComparison.Ordinal);
			if (start == -1)
			{
				// ERROR 
                Console.WriteLine("Contents of file " + originalPath + " not found!");
				return 2;
			}
			String modifiedFragment = File.ReadAllText(Path.Combine(modifiedReplacePath, Path.GetFileName(originalPath)));
			
			full = full.Substring(0, start) + full.Substring(start + originalFragment.Length);
			full = full.Insert(start, modifiedFragment);
		}
		
		Console.WriteLine("Replacement completed. Beginning file write...");
		File.WriteAllText(args[1], full);
		Console.WriteLine("File write complete.");
        return 0;
	}
}