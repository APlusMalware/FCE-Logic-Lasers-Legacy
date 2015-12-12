using System;
using System.IO;

class CILSwapper
{
	static void Main()
	{
		String full = File.ReadAllText(@"..\Originals\Latest.il");
		String[] originalFragmentPaths = Directory.GetFiles(@"..\Originals\Fragments");
		String[] modifiedFragmentPaths = Directory.GetFiles(@"..\Fragments");
		Int32 insertIndex = -1;

		foreach (String originalPath in originalFragmentPaths)
		{
			String originalFragment = File.ReadAllText(originalPath);
			Int32 start = full.IndexOf(originalFragment, StringComparison.Ordinal);
			if (start == -1)
			{
				// ERROR 
                Console.WriteLine("Contents of file " + originalPath + " not found!");
				return;
			}
			
			full = full.Substring(0, start) + full.Substring(start + originalFragment.Length);
			if (insertIndex == -1)
				insertIndex = start;
		}

		foreach (String modifiedPath in modifiedFragmentPaths)
		{
			String modifiedFragment = File.ReadAllText(modifiedPath);
			full = full.Insert(insertIndex, modifiedFragment);
		}

		Console.WriteLine("Replacement completed. Beginning file write...");
		File.WriteAllText(@"..\Integrated.il", full);
		Console.WriteLine("File write complete.");
	}
}