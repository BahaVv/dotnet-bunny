
all: publish

check: publish
	dotnet test Turkey.Tests

publish:
	dotnet publish -c Release

clean:
	rm -rf Turkey/bin Turkey/obj
	rm -rf Turkey.Tests/bin Turkey.Tests/obj
	find -iname '*.log' -delete

fix-line-endings:
	find -iname '*.cs' -exec dos2unix {} \;

list-todos:
	grep -r -E 'TODO|FIXME' *
