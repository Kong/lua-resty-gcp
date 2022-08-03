-- add the repository root to the lua package path
package.path = package.path .. ";" .. os.getenv("PWD") .. "/?.lua"
