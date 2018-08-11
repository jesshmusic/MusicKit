import XCTest
import MusicKit

final class ScaleTests: XCTestCase {
    func testMajor() {
        let sut = Scale.Major(Chroma.c*5)
        let expected: PitchSet = [
            Chroma.c*5,
            Chroma.d*5,
            Chroma.e*5,
            Chroma.f*5,
            Chroma.g*5,
            Chroma.a*5,
            Chroma.b*5,
        ]
        XCTAssertEqual(sut, expected)
    }

    func testPhrygian() {
        let sut = Scale.Phrygian(Chroma.e*5)
        let expected: PitchSet = [
            Chroma.e*5,
            Chroma.f*5,
            Chroma.g*5,
            Chroma.a*5,
            Chroma.b*5,
            Chroma.c*6,
            Chroma.d*6,
        ]
        XCTAssertEqual(sut, expected)
    }

    func testChromatic() {
        let sut = Scale.Chromatic(Chroma.c*5)
        let c5 = Chroma.c*5
        let cs5 = Chroma.cs*5
        let d5 = Chroma.d*5
        let ds5 = Chroma.ds*5
        let e5 = Chroma.e*5
        let f5 = Chroma.f*5
        let fs5 = Chroma.fs*5
        let g5 = Chroma.g*5
        let gs5 = Chroma.gs*5
        let a5 = Chroma.a*5
        let as5 = Chroma.as*5
        let b5 = Chroma.b*5
        let chromatic: PitchSet = [c5, cs5, d5,
            ds5, e5, f5, fs5, g5,
            gs5, a5, as5, b5]
        XCTAssertEqual(sut, chromatic)
    }
}
