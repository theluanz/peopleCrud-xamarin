; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [210 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 61
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 90
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 85
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 75
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 100
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 75
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 42
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 76
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 40
	i32 220171995, ; 9: System.Diagnostics.Debug => 0xd1f8edb => 6
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 56
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 98
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 45
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 60
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 54
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 32
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 26
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 58
	i32 346219089, ; 18: Autofac => 0x14a2e251 => 9
	i32 347068432, ; 19: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 19
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 25
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 44
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 84
	i32 442565967, ; 23: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 53
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 13
	i32 469710990, ; 26: System.dll => 0x1bff388e => 24
	i32 476646585, ; 27: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 54
	i32 486930444, ; 28: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 65
	i32 526420162, ; 29: System.Transactions.dll => 0x1f6088c2 => 92
	i32 545304856, ; 30: System.Runtime.Extensions => 0x2080b118 => 103
	i32 605376203, ; 31: System.IO.Compression.FileSystem => 0x24154ecb => 96
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 49
	i32 663517072, ; 33: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 81
	i32 666292255, ; 34: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 37
	i32 672442732, ; 35: System.Collections.Concurrent => 0x2814a96c => 3
	i32 690569205, ; 36: System.Xml.Linq.dll => 0x29293ff5 => 31
	i32 748832960, ; 37: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 17
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 95
	i32 809851609, ; 39: System.Drawing.Common.dll => 0x30455ad9 => 94
	i32 843511501, ; 40: Xamarin.AndroidX.Print => 0x3246f6cd => 72
	i32 928116545, ; 41: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 90
	i32 967690846, ; 42: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 58
	i32 974778368, ; 43: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 975236339, ; 44: System.Diagnostics.Tracing => 0x3a20ecf3 => 101
	i32 992768348, ; 45: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 46: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 74
	i32 1035644815, ; 47: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 36
	i32 1042160112, ; 48: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 87
	i32 1052210849, ; 49: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 62
	i32 1098259244, ; 50: System => 0x41761b2c => 24
	i32 1175144683, ; 51: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 79
	i32 1178241025, ; 52: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 69
	i32 1204270330, ; 53: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 37
	i32 1267360935, ; 54: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 80
	i32 1292207520, ; 55: SQLitePCLRaw.core.dll => 0x4d0585a0 => 18
	i32 1293217323, ; 56: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 51
	i32 1365406463, ; 57: System.ServiceModel.Internals.dll => 0x516272ff => 99
	i32 1376866003, ; 58: Xamarin.AndroidX.SavedState => 0x52114ed3 => 74
	i32 1379779777, ; 59: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 60: Xamarin.AndroidX.Media.dll => 0x5333188f => 66
	i32 1406073936, ; 61: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 46
	i32 1411638395, ; 62: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 28
	i32 1457743152, ; 63: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1460219004, ; 64: Xamarin.Forms.Xaml => 0x57092c7c => 88
	i32 1462112819, ; 65: System.IO.Compression.dll => 0x57261233 => 95
	i32 1469204771, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 35
	i32 1479246337, ; 67: PeopleCrud.Android => 0x582b8201 => 0
	i32 1582372066, ; 68: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 50
	i32 1592978981, ; 69: System.Runtime.Serialization.dll => 0x5ef2ee25 => 8
	i32 1622152042, ; 70: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 64
	i32 1624863272, ; 71: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 83
	i32 1636350590, ; 72: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 48
	i32 1639515021, ; 73: System.Net.Http.dll => 0x61b9038d => 7
	i32 1657153582, ; 74: System.Runtime => 0x62c6282e => 29
	i32 1658241508, ; 75: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 77
	i32 1658251792, ; 76: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 89
	i32 1670060433, ; 77: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 45
	i32 1701541528, ; 78: System.Diagnostics.Debug.dll => 0x656b7698 => 6
	i32 1711441057, ; 79: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 19
	i32 1726116996, ; 80: System.Reflection.dll => 0x66e27484 => 102
	i32 1729485958, ; 81: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 41
	i32 1766324549, ; 82: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 76
	i32 1776026572, ; 83: System.Core.dll => 0x69dc03cc => 22
	i32 1788241197, ; 84: Xamarin.AndroidX.Fragment => 0x6a96652d => 53
	i32 1808609942, ; 85: Xamarin.AndroidX.Loader => 0x6bcd3296 => 64
	i32 1813201214, ; 86: Xamarin.Google.Android.Material => 0x6c13413e => 89
	i32 1818569960, ; 87: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 70
	i32 1858404680, ; 88: PeopleCrud.dll => 0x6ec50148 => 14
	i32 1867746548, ; 89: Xamarin.Essentials.dll => 0x6f538cf4 => 84
	i32 1878053835, ; 90: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 88
	i32 1885316902, ; 91: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 38
	i32 1900610850, ; 92: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 93: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 67
	i32 2011961780, ; 94: System.Buffers.dll => 0x77ec19b4 => 21
	i32 2019465201, ; 95: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 62
	i32 2055257422, ; 96: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 59
	i32 2079903147, ; 97: System.Runtime.dll => 0x7bf8cdab => 29
	i32 2090596640, ; 98: System.Numerics.Vectors => 0x7c9bf920 => 27
	i32 2097448633, ; 99: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 55
	i32 2103459038, ; 100: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 20
	i32 2126786730, ; 101: Xamarin.Forms.Platform.Android => 0x7ec430aa => 86
	i32 2201231467, ; 102: System.Net.Http => 0x8334206b => 7
	i32 2217644978, ; 103: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 79
	i32 2244775296, ; 104: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 65
	i32 2256548716, ; 105: Xamarin.AndroidX.MultiDex => 0x8680336c => 67
	i32 2261435625, ; 106: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 57
	i32 2279755925, ; 107: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 73
	i32 2315684594, ; 108: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 33
	i32 2409053734, ; 109: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 71
	i32 2465273461, ; 110: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 17
	i32 2465532216, ; 111: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 44
	i32 2471841756, ; 112: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 113: Java.Interop.dll => 0x93918882 => 11
	i32 2501346920, ; 114: System.Data.DataSetExtensions => 0x95178668 => 93
	i32 2505896520, ; 115: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 61
	i32 2581819634, ; 116: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 80
	i32 2620871830, ; 117: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 48
	i32 2624644809, ; 118: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 52
	i32 2633051222, ; 119: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 60
	i32 2701096212, ; 120: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 77
	i32 2732626843, ; 121: Xamarin.AndroidX.Activity => 0xa2e0939b => 32
	i32 2737747696, ; 122: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 35
	i32 2766581644, ; 123: Xamarin.Forms.Core => 0xa4e6af8c => 85
	i32 2768457651, ; 124: PropertyChanged => 0xa5034fb3 => 15
	i32 2778768386, ; 125: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 82
	i32 2810250172, ; 126: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 46
	i32 2819470561, ; 127: System.Xml.dll => 0xa80db4e1 => 30
	i32 2853208004, ; 128: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 82
	i32 2855708567, ; 129: Xamarin.AndroidX.Transition => 0xaa36a797 => 78
	i32 2901442782, ; 130: System.Reflection => 0xacf080de => 102
	i32 2903344695, ; 131: System.ComponentModel.Composition => 0xad0d8637 => 97
	i32 2905242038, ; 132: mscorlib.dll => 0xad2a79b6 => 13
	i32 2916838712, ; 133: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 83
	i32 2919462931, ; 134: System.Numerics.Vectors.dll => 0xae037813 => 27
	i32 2921128767, ; 135: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 34
	i32 2961350945, ; 136: PeopleCrud => 0xb082a121 => 14
	i32 2978675010, ; 137: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 51
	i32 3024354802, ; 138: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 56
	i32 3044182254, ; 139: FormsViewGroup => 0xb57288ee => 10
	i32 3057625584, ; 140: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 68
	i32 3111772706, ; 141: System.Runtime.Serialization => 0xb979e222 => 8
	i32 3144447155, ; 142: Autofac.dll => 0xbb6c74b3 => 9
	i32 3147165239, ; 143: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 101
	i32 3204380047, ; 144: System.Data.dll => 0xbefef58f => 91
	i32 3211777861, ; 145: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 50
	i32 3220365878, ; 146: System.Threading => 0xbff2e236 => 5
	i32 3247949154, ; 147: Mono.Security => 0xc197c562 => 104
	i32 3258312781, ; 148: Xamarin.AndroidX.CardView => 0xc235e84d => 41
	i32 3267021929, ; 149: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 39
	i32 3286872994, ; 150: SQLite-net.dll => 0xc3e9b3a2 => 16
	i32 3317135071, ; 151: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 49
	i32 3317144872, ; 152: System.Data => 0xc5b79d28 => 91
	i32 3340431453, ; 153: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 38
	i32 3346324047, ; 154: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 69
	i32 3353484488, ; 155: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 55
	i32 3360279109, ; 156: SQLitePCLRaw.core => 0xc849ca45 => 18
	i32 3362522851, ; 157: Xamarin.AndroidX.Core => 0xc86c06e3 => 47
	i32 3366347497, ; 158: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 159: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 73
	i32 3395150330, ; 160: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 28
	i32 3404865022, ; 161: System.ServiceModel.Internals => 0xcaf21dfe => 99
	i32 3429136800, ; 162: System.Xml => 0xcc6479a0 => 30
	i32 3430777524, ; 163: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 164: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 52
	i32 3476120550, ; 165: Mono.Android => 0xcf3163e6 => 12
	i32 3486566296, ; 166: System.Transactions => 0xcfd0c798 => 92
	i32 3493954962, ; 167: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 43
	i32 3501239056, ; 168: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 39
	i32 3509114376, ; 169: System.Xml.Linq => 0xd128d608 => 31
	i32 3536029504, ; 170: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 86
	i32 3567349600, ; 171: System.ComponentModel.Composition.dll => 0xd4a16f60 => 97
	i32 3618140916, ; 172: Xamarin.AndroidX.Preference => 0xd7a872f4 => 71
	i32 3627220390, ; 173: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 72
	i32 3632359727, ; 174: Xamarin.Forms.Platform => 0xd881692f => 87
	i32 3633644679, ; 175: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 34
	i32 3641597786, ; 176: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 59
	i32 3672681054, ; 177: Mono.Android.dll => 0xdae8aa5e => 12
	i32 3676310014, ; 178: System.Web.Services.dll => 0xdb2009fe => 98
	i32 3682565725, ; 179: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 40
	i32 3684561358, ; 180: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 43
	i32 3689375977, ; 181: System.Drawing.Common => 0xdbe768e9 => 94
	i32 3718780102, ; 182: Xamarin.AndroidX.Annotation => 0xdda814c6 => 33
	i32 3724971120, ; 183: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 68
	i32 3748608112, ; 184: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 23
	i32 3754567612, ; 185: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 20
	i32 3758932259, ; 186: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 57
	i32 3786282454, ; 187: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 42
	i32 3822602673, ; 188: Xamarin.AndroidX.Media => 0xe3d849b1 => 66
	i32 3829621856, ; 189: System.Numerics.dll => 0xe4436460 => 26
	i32 3849253459, ; 190: System.Runtime.InteropServices.dll => 0xe56ef253 => 100
	i32 3876362041, ; 191: SQLite-net => 0xe70c9739 => 16
	i32 3885922214, ; 192: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 78
	i32 3896106733, ; 193: System.Collections.Concurrent.dll => 0xe839deed => 3
	i32 3896760992, ; 194: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 47
	i32 3920810846, ; 195: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 96
	i32 3921031405, ; 196: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 81
	i32 3931092270, ; 197: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 70
	i32 3945713374, ; 198: System.Data.DataSetExtensions.dll => 0xeb2ecede => 93
	i32 3955647286, ; 199: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 36
	i32 4025784931, ; 200: System.Memory => 0xeff49a63 => 25
	i32 4073602200, ; 201: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4105002889, ; 202: Mono.Security.dll => 0xf4ad5f89 => 104
	i32 4151237749, ; 203: System.Core => 0xf76edc75 => 22
	i32 4182413190, ; 204: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 63
	i32 4184000013, ; 205: PropertyChanged.dll => 0xf962c60d => 15
	i32 4213026141, ; 206: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 23
	i32 4260525087, ; 207: System.Buffers => 0xfdf2741f => 21
	i32 4273522406, ; 208: PeopleCrud.Android.dll => 0xfeb8c6e6 => 0
	i32 4292120959 ; 209: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 63
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [210 x i32] [
	i32 61, i32 90, i32 85, i32 75, i32 100, i32 75, i32 42, i32 76, ; 0..7
	i32 40, i32 6, i32 56, i32 98, i32 45, i32 60, i32 54, i32 32, ; 8..15
	i32 26, i32 58, i32 9, i32 19, i32 25, i32 44, i32 84, i32 4, ; 16..23
	i32 53, i32 13, i32 24, i32 54, i32 65, i32 92, i32 103, i32 96, ; 24..31
	i32 49, i32 81, i32 37, i32 3, i32 31, i32 17, i32 95, i32 94, ; 32..39
	i32 72, i32 90, i32 58, i32 10, i32 101, i32 4, i32 74, i32 36, ; 40..47
	i32 87, i32 62, i32 24, i32 79, i32 69, i32 37, i32 80, i32 18, ; 48..55
	i32 51, i32 99, i32 74, i32 2, i32 66, i32 46, i32 28, i32 103, ; 56..63
	i32 88, i32 95, i32 35, i32 0, i32 50, i32 8, i32 64, i32 83, ; 64..71
	i32 48, i32 7, i32 29, i32 77, i32 89, i32 45, i32 6, i32 19, ; 72..79
	i32 102, i32 41, i32 76, i32 22, i32 53, i32 64, i32 89, i32 70, ; 80..87
	i32 14, i32 84, i32 88, i32 38, i32 2, i32 67, i32 21, i32 62, ; 88..95
	i32 59, i32 29, i32 27, i32 55, i32 20, i32 86, i32 7, i32 79, ; 96..103
	i32 65, i32 67, i32 57, i32 73, i32 33, i32 71, i32 17, i32 44, ; 104..111
	i32 1, i32 11, i32 93, i32 61, i32 80, i32 48, i32 52, i32 60, ; 112..119
	i32 77, i32 32, i32 35, i32 85, i32 15, i32 82, i32 46, i32 30, ; 120..127
	i32 82, i32 78, i32 102, i32 97, i32 13, i32 83, i32 27, i32 34, ; 128..135
	i32 14, i32 51, i32 56, i32 10, i32 68, i32 8, i32 9, i32 101, ; 136..143
	i32 91, i32 50, i32 5, i32 104, i32 41, i32 39, i32 16, i32 49, ; 144..151
	i32 91, i32 38, i32 69, i32 55, i32 18, i32 47, i32 11, i32 73, ; 152..159
	i32 28, i32 99, i32 30, i32 1, i32 52, i32 12, i32 92, i32 43, ; 160..167
	i32 39, i32 31, i32 86, i32 97, i32 71, i32 72, i32 87, i32 34, ; 168..175
	i32 59, i32 12, i32 98, i32 40, i32 43, i32 94, i32 33, i32 68, ; 176..183
	i32 23, i32 20, i32 57, i32 42, i32 66, i32 26, i32 100, i32 16, ; 184..191
	i32 78, i32 3, i32 47, i32 96, i32 81, i32 70, i32 93, i32 36, ; 192..199
	i32 25, i32 5, i32 104, i32 22, i32 63, i32 15, i32 23, i32 21, ; 200..207
	i32 0, i32 63 ; 208..209
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
