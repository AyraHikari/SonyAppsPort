.class public Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint;,
        Landroidx/constraintlayout/widget/ConstraintSet$Motion;,
        Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;,
        Landroidx/constraintlayout/widget/ConstraintSet$Transform;,
        Landroidx/constraintlayout/widget/ConstraintSet$Layout;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field private static final ANIMATE_RELATIVE_TO:I = 0x40

.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4b

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_MARGIN:I = 0x49

.field private static final BARRIER_TYPE:I = 0x1

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINED_HEIGHT:I = 0x51

.field private static final CONSTRAINED_WIDTH:I = 0x50

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x4a

.field private static final CONSTRAINT_TAG:I = 0x4d

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final DRAW_PATH:I = 0x42

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "XML parser error must be within a Constraint "

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field private static final HEIGHT_PERCENT:I = 0x46

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final MOTION_STAGGER:I = 0x4f

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field private static final PATH_MOTION_ARC:I = 0x4c

.field private static final PROGRESS:I = 0x44

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION:I = 0x3c

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSITION_EASING:I = 0x41

.field private static final TRANSITION_PATH_ROTATE:I = 0x43

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x52

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field private static final VISIBILITY_MODE:I = 0x4e

.field public static final VISIBILITY_MODE_IGNORE:I = 0x1

.field public static final VISIBILITY_MODE_NORMAL:I = 0x0

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field private static final WIDTH_PERCENT:I = 0x45

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private mForceId:Z

.field private mSavedAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mValidate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 220
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 225
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 311
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 344
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintLeft_creator:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 347
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 353
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 354
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 355
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 356
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 357
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 359
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 360
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 361
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 362
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 363
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 364
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 366
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 367
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 369
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 370
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 371
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 373
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 374
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 375
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 376
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 378
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 379
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 380
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_animate_relativeTo:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 381
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transitionEasing:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 382
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_drawPath:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 383
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_transitionPathRotate:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 384
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_motionStagger:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 385
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 386
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_progress:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 387
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 388
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 390
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 391
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 392
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 393
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 394
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 395
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_pathMotionArc:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 396
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constraintTag:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 397
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_visibilityMode:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 398
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constrainedWidth:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 399
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint_layout_constrainedHeight:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 400
    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/TypedArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 74
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 74
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    return-object v0
.end method

.method private varargs addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V
    .locals 5
    .param p1, "attributeType"    # Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .param p2, "attributeName"    # [Ljava/lang/String;

    .line 3117
    const/4 v0, 0x0

    .line 3118
    .local v0, "constraintAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 3119
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3120
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 3121
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 3122
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConstraintAttribute is already a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3123
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3126
    :cond_1
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    aget-object v3, p2, v1

    invoke-direct {v2, v3, p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V

    move-object v0, v2

    .line 3127
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3118
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3130
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "referenceIdString"    # Ljava/lang/String;

    .line 3714
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3715
    .local v0, "split":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3716
    .local v1, "context":Landroid/content/Context;
    array-length v2, v0

    new-array v2, v2, [I

    .line 3717
    .local v2, "tags":[I
    const/4 v3, 0x0

    .line 3718
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 3719
    aget-object v5, v0, v4

    .line 3720
    .local v5, "idString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3721
    const/4 v6, 0x0

    .line 3723
    .local v6, "tag":I
    :try_start_0
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    .line 3724
    .local v7, "res":Ljava/lang/Class;
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 3725
    .local v8, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v9

    .line 3728
    .end local v7    # "res":Ljava/lang/Class;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 3726
    :catch_0
    move-exception v7

    .line 3729
    :goto_1
    if-nez v6, :cond_0

    .line 3730
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 3731
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3730
    const-string v9, "id"

    invoke-virtual {v7, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3734
    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_1

    .line 3735
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3736
    .local v7, "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 3737
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_1

    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 3738
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3741
    .end local v7    # "constraintLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput v6, v2, v3

    .line 3718
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "tag":I
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_0

    .line 3743
    .end local v4    # "i":I
    .end local v7    # "count":I
    .restart local v3    # "count":I
    :cond_2
    array-length v4, v0

    if-eq v3, v4, :cond_3

    .line 3744
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 3746
    :cond_3
    return-object v2
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .locals 12
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "rightId"    # I
    .param p4, "rightSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I
    .param p8, "left"    # I
    .param p9, "right"    # I

    .line 1968
    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    array-length v0, v7

    const-string v1, "must have 2 or more widgets in a chain"

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    .line 1971
    if-eqz v8, :cond_1

    array-length v0, v8

    array-length v2, v7

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1972
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1974
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 1975
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    aget v2, v8, v0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 1977
    :cond_2
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    move/from16 v9, p7

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 1978
    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1979
    const/4 v0, 0x1

    move v10, v0

    .local v10, "i":I
    :goto_1
    array-length v0, v7

    if-ge v10, v0, :cond_4

    .line 1980
    aget v11, v7, v10

    .line 1981
    .local v11, "chainId":I
    aget v1, v7, v10

    add-int/lit8 v0, v10, -0x1

    aget v3, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1982
    add-int/lit8 v0, v10, -0x1

    aget v1, v7, v0

    aget v3, v7, v10

    move-object v0, p0

    move/from16 v2, p9

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1983
    if-eqz v8, :cond_3

    .line 1984
    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    aget v1, v8, v10

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 1979
    .end local v11    # "chainId":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1988
    .end local v10    # "i":I
    :cond_4
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, p0

    move/from16 v2, p9

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1991
    return-void

    .line 1969
    :cond_5
    move/from16 v9, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 3387
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 3388
    .local v0, "c":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3389
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->populateConstraint(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 3390
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3391
    return-object v0
.end method

.method private get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 3
    .param p1, "id"    # I

    .line 3211
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3212
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3214
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    return-object v0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "def"    # I

    .line 3379
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3380
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3381
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 3383
    :cond_0
    return v0
.end method

.method private populateConstraint(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "c"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .line 3395
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 3396
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3397
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 3440
    .local v2, "attr":I
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Constraint_android_id:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    .line 3441
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    .line 3442
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 3443
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 3444
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 3446
    :cond_0
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const-string v5, "   "

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/16 v8, 0x15

    const-string v9, "ConstraintSet"

    packed-switch v3, :pswitch_data_0

    .line 3707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3708
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3707
    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3703
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3704
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3703
    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    goto/16 :goto_1

    .line 3583
    :pswitch_1
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 3584
    goto/16 :goto_1

    .line 3580
    :pswitch_2
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 3581
    goto/16 :goto_1

    .line 3678
    :pswitch_3
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 3679
    goto/16 :goto_1

    .line 3590
    :pswitch_4
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 3591
    goto/16 :goto_1

    .line 3697
    :pswitch_5
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 3698
    goto/16 :goto_1

    .line 3672
    :pswitch_6
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 3673
    goto/16 :goto_1

    .line 3700
    :pswitch_7
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 3701
    goto/16 :goto_1

    .line 3694
    :pswitch_8
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 3695
    goto/16 :goto_1

    .line 3691
    :pswitch_9
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 3692
    goto/16 :goto_1

    .line 3688
    :pswitch_a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 3689
    goto/16 :goto_1

    .line 3684
    :pswitch_b
    const-string v3, "CURRENTLY UNSUPPORTED"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    goto/16 :goto_1

    .line 3655
    :pswitch_c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 3656
    goto/16 :goto_1

    .line 3652
    :pswitch_d
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 3653
    goto/16 :goto_1

    .line 3658
    :pswitch_e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 3659
    goto/16 :goto_1

    .line 3675
    :pswitch_f
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 3676
    goto/16 :goto_1

    .line 3681
    :pswitch_10
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-virtual {p3, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 3682
    goto/16 :goto_1

    .line 3664
    :pswitch_11
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3665
    .local v3, "type":Landroid/util/TypedValue;
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 3666
    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    goto/16 :goto_1

    .line 3668
    :cond_1
    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    sget-object v5, Landroidx/constraintlayout/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    invoke-virtual {p3, v2, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 3670
    goto/16 :goto_1

    .line 3661
    .end local v3    # "type":Landroid/util/TypedValue;
    :pswitch_12
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 3662
    goto/16 :goto_1

    .line 3511
    :pswitch_13
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 3512
    goto/16 :goto_1

    .line 3508
    :pswitch_14
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 3509
    goto/16 :goto_1

    .line 3505
    :pswitch_15
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 3506
    goto/16 :goto_1

    .line 3602
    :pswitch_16
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 3603
    goto/16 :goto_1

    .line 3574
    :pswitch_17
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 3575
    goto/16 :goto_1

    .line 3577
    :pswitch_18
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 3578
    goto/16 :goto_1

    .line 3568
    :pswitch_19
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 3569
    goto/16 :goto_1

    .line 3571
    :pswitch_1a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 3572
    goto/16 :goto_1

    .line 3565
    :pswitch_1b
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 3566
    goto/16 :goto_1

    .line 3562
    :pswitch_1c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 3563
    goto/16 :goto_1

    .line 3629
    :pswitch_1d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_2

    .line 3630
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    goto/16 :goto_1

    .line 3626
    :pswitch_1e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 3627
    goto/16 :goto_1

    .line 3623
    :pswitch_1f
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 3624
    goto/16 :goto_1

    .line 3620
    :pswitch_20
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 3621
    goto/16 :goto_1

    .line 3617
    :pswitch_21
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 3618
    goto/16 :goto_1

    .line 3614
    :pswitch_22
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 3615
    goto/16 :goto_1

    .line 3611
    :pswitch_23
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 3612
    goto/16 :goto_1

    .line 3608
    :pswitch_24
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 3609
    goto/16 :goto_1

    .line 3605
    :pswitch_25
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 3606
    goto/16 :goto_1

    .line 3596
    :pswitch_26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_2

    .line 3597
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 3598
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    goto/16 :goto_1

    .line 3593
    :pswitch_27
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 3594
    goto/16 :goto_1

    .line 3640
    :pswitch_28
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 3641
    goto/16 :goto_1

    .line 3643
    :pswitch_29
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 3644
    goto/16 :goto_1

    .line 3634
    :pswitch_2a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 3635
    goto/16 :goto_1

    .line 3637
    :pswitch_2b
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 3638
    goto/16 :goto_1

    .line 3646
    :pswitch_2c
    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 3647
    goto/16 :goto_1

    .line 3535
    :pswitch_2d
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 3536
    goto/16 :goto_1

    .line 3460
    :pswitch_2e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 3461
    goto/16 :goto_1

    .line 3463
    :pswitch_2f
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 3464
    goto/16 :goto_1

    .line 3550
    :pswitch_30
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 3551
    goto/16 :goto_1

    .line 3496
    :pswitch_31
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 3497
    goto/16 :goto_1

    .line 3493
    :pswitch_32
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 3494
    goto/16 :goto_1

    .line 3544
    :pswitch_33
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 3545
    goto/16 :goto_1

    .line 3457
    :pswitch_34
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 3458
    goto/16 :goto_1

    .line 3454
    :pswitch_35
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 3455
    goto/16 :goto_1

    .line 3541
    :pswitch_36
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 3542
    goto/16 :goto_1

    .line 3490
    :pswitch_37
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 3491
    goto/16 :goto_1

    .line 3451
    :pswitch_38
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 3452
    goto/16 :goto_1

    .line 3448
    :pswitch_39
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 3449
    goto/16 :goto_1

    .line 3538
    :pswitch_3a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 3539
    goto/16 :goto_1

    .line 3556
    :pswitch_3b
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 3557
    goto/16 :goto_1

    .line 3586
    :pswitch_3c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 3587
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    iget-object v5, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    aget v4, v4, v5

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 3588
    goto/16 :goto_1

    .line 3559
    :pswitch_3d
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 3560
    goto/16 :goto_1

    .line 3532
    :pswitch_3e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 3533
    goto/16 :goto_1

    .line 3487
    :pswitch_3f
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 3488
    goto/16 :goto_1

    .line 3484
    :pswitch_40
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 3485
    goto/16 :goto_1

    .line 3481
    :pswitch_41
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 3482
    goto/16 :goto_1

    .line 3517
    :pswitch_42
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 3518
    goto/16 :goto_1

    .line 3526
    :pswitch_43
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 3527
    goto/16 :goto_1

    .line 3520
    :pswitch_44
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 3521
    goto/16 :goto_1

    .line 3514
    :pswitch_45
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 3515
    goto/16 :goto_1

    .line 3529
    :pswitch_46
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 3530
    goto/16 :goto_1

    .line 3523
    :pswitch_47
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 3524
    goto/16 :goto_1

    .line 3499
    :pswitch_48
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 3500
    goto/16 :goto_1

    .line 3502
    :pswitch_49
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 3503
    goto :goto_1

    .line 3547
    :pswitch_4a
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 3548
    goto :goto_1

    .line 3478
    :pswitch_4b
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 3479
    goto :goto_1

    .line 3475
    :pswitch_4c
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 3476
    goto :goto_1

    .line 3649
    :pswitch_4d
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 3650
    goto :goto_1

    .line 3466
    :pswitch_4e
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 3467
    goto :goto_1

    .line 3469
    :pswitch_4f
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 3470
    goto :goto_1

    .line 3553
    :pswitch_50
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 3554
    goto :goto_1

    .line 3472
    :pswitch_51
    iget-object v3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v4, p2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 3473
    nop

    .line 3396
    .end local v2    # "attr":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 3711
    .end local v1    # "i":I
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "side"    # I

    .line 3218
    packed-switch p1, :pswitch_data_0

    .line 3234
    const-string v0, "undefined"

    return-object v0

    .line 3232
    :pswitch_0
    const-string v0, "end"

    return-object v0

    .line 3230
    :pswitch_1
    const-string v0, "start"

    return-object v0

    .line 3228
    :pswitch_2
    const-string v0, "baseline"

    return-object v0

    .line 3226
    :pswitch_3
    const-string v0, "bottom"

    return-object v0

    .line 3224
    :pswitch_4
    const-string v0, "top"

    return-object v0

    .line 3222
    :pswitch_5
    const-string v0, "right"

    return-object v0

    .line 3220
    :pswitch_6
    const-string v0, "left"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 3178
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3179
    .local v0, "chars":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3180
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3181
    .local v2, "indouble":Z
    const/4 v3, 0x0

    .line 3182
    .local v3, "start":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 3183
    aget-char v5, v0, v4

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    if-nez v2, :cond_0

    .line 3184
    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, v3

    invoke-direct {v5, v0, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3185
    add-int/lit8 v3, v4, 0x1

    goto :goto_2

    .line 3186
    :cond_0
    aget-char v5, v0, v4

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    .line 3187
    if-nez v2, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v2, v5

    .line 3182
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3190
    .end local v4    # "i":I
    :cond_3
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v3

    invoke-direct {v4, v0, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3191
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method


# virtual methods
.method public varargs addColorAttributes([Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # [Ljava/lang/String;

    .line 3199
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    .line 3200
    return-void
.end method

.method public varargs addFloatAttributes([Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # [Ljava/lang/String;

    .line 3203
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    .line 3204
    return-void
.end method

.method public varargs addIntAttributes([Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # [Ljava/lang/String;

    .line 3195
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    .line 3196
    return-void
.end method

.method public varargs addStringAttributes([Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # [Ljava/lang/String;

    .line 3207
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->addAttributes(Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;[Ljava/lang/String;)V

    .line 3208
    return-void
.end method

.method public addToHorizontalChain(III)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "leftId"    # I
    .param p3, "rightId"    # I

    .line 2894
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez p2, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2895
    const/4 v2, 0x2

    if-nez p3, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2896
    if-eqz p2, :cond_2

    .line 2897
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2899
    :cond_2
    if-eqz p3, :cond_3

    .line 2900
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2902
    :cond_3
    return-void
.end method

.method public addToHorizontalChainRTL(III)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "leftId"    # I
    .param p3, "rightId"    # I

    .line 2912
    const/4 v6, 0x6

    const/4 v7, 0x7

    if-nez p2, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2913
    const/4 v2, 0x7

    if-nez p3, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2914
    if-eqz p2, :cond_2

    .line 2915
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2917
    :cond_2
    if-eqz p3, :cond_3

    .line 2918
    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2920
    :cond_3
    return-void
.end method

.method public addToVerticalChain(III)V
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "topId"    # I
    .param p3, "bottomId"    # I

    .line 2930
    const/4 v6, 0x3

    const/4 v7, 0x4

    if-nez p2, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2931
    const/4 v2, 0x4

    if-nez p3, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2932
    if-eqz p2, :cond_2

    .line 2933
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2935
    :cond_2
    if-eqz p3, :cond_3

    .line 2936
    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2938
    :cond_3
    return-void
.end method

.method public applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1603
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1604
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1605
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1606
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 1607
    .local v3, "id":I
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id unknown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConstraintSet"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    goto :goto_2

    .line 1611
    :cond_0
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 1612
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1615
    :cond_2
    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1616
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1617
    .local v4, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-static {v2, v5}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    .line 1604
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "id":I
    .end local v4    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1620
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1581
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 1582
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1583
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1584
    return-void
.end method

.method public applyToHelper(Landroidx/constraintlayout/widget/ConstraintHelper;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 3
    .param p1, "helper"    # Landroidx/constraintlayout/widget/ConstraintHelper;
    .param p2, "child"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "layoutParams"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 1631
    .local p4, "mapIdToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->getId()I

    move-result v0

    .line 1632
    .local v0, "id":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1633
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1634
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    instance-of v2, p2, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    if-eqz v2, :cond_0

    .line 1635
    move-object v2, p2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/HelperWidget;

    .line 1636
    .local v2, "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    invoke-virtual {p1, v1, v2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/solver/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 1639
    .end local v1    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v2    # "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    :cond_0
    return-void
.end method

.method applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    .locals 9
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "applyPostLayout"    # Z

    .line 1658
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1659
    .local v0, "count":I
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1660
    .local v1, "used":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_d

    .line 1662
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1663
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 1664
    .local v5, "id":I
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "ConstraintSet"

    if-nez v6, :cond_0

    .line 1665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id unknown "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    goto/16 :goto_3

    .line 1669
    :cond_0
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    if-eqz v6, :cond_2

    if-eq v5, v3, :cond_1

    goto :goto_1

    .line 1670
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1672
    :cond_2
    :goto_1
    if-ne v5, v3, :cond_3

    .line 1673
    goto/16 :goto_3

    .line 1676
    :cond_3
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1677
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1678
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1679
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    instance-of v7, v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v7, :cond_4

    .line 1680
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v8, 0x1

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 1682
    :cond_4
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    if-eq v7, v3, :cond_6

    .line 1683
    iget-object v3, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 1685
    :pswitch_0
    move-object v3, v4

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 1686
    .local v3, "barrier":Landroidx/constraintlayout/widget/Barrier;
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 1687
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 1688
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 1690
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 1691
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v7, :cond_5

    .line 1692
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto :goto_2

    .line 1693
    :cond_5
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 1694
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, v3, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1696
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    .line 1701
    .end local v3    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_6
    :goto_2
    nop

    .line 1702
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1703
    .local v3, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 1704
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1706
    if-eqz p2, :cond_7

    .line 1707
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-static {v4, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setAttributes(Landroid/view/View;Ljava/util/HashMap;)V

    .line 1709
    :cond_7
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1710
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    if-nez v7, :cond_8

    .line 1711
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1713
    :cond_8
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_b

    .line 1714
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1715
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotation(F)V

    .line 1716
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotationX(F)V

    .line 1717
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotationY(F)V

    .line 1718
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1719
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1720
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1721
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setPivotX(F)V

    .line 1723
    :cond_9
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1724
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setPivotY(F)V

    .line 1726
    :cond_a
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 1727
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 1728
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_b

    .line 1729
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 1730
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    if-eqz v7, :cond_b

    .line 1731
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setElevation(F)V

    .line 1735
    .end local v3    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v6    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_b
    goto :goto_3

    .line 1736
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING NO CONSTRAINTS for view "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "id":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1739
    .end local v2    # "i":I
    :cond_d
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1740
    .local v4, "id":Ljava/lang/Integer;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1741
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    if-eq v6, v3, :cond_10

    .line 1742
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    packed-switch v6, :pswitch_data_1

    goto :goto_6

    .line 1744
    :pswitch_1
    new-instance v6, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 1745
    .local v6, "barrier":Landroidx/constraintlayout/widget/Barrier;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 1746
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v7, :cond_e

    .line 1747
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto :goto_5

    .line 1748
    :cond_e
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 1749
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1751
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    .line 1753
    :cond_f
    :goto_5
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 1754
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v7, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 1755
    nop

    .line 1756
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v7

    .line 1757
    .local v7, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    .line 1758
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1759
    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    .end local v6    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    .end local v7    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_10
    :goto_6
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    if-eqz v6, :cond_11

    .line 1764
    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 1765
    .local v6, "g":Landroidx/constraintlayout/widget/Guideline;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/widget/Guideline;->setId(I)V

    .line 1766
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v7

    .line 1767
    .restart local v7    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1768
    invoke-virtual {p1, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1770
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v6    # "g":Landroidx/constraintlayout/widget/Guideline;
    .end local v7    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_11
    goto/16 :goto_4

    .line 1771
    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public applyToLayoutParams(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "layoutParams"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1648
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1650
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1652
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_0
    return-void
.end method

.method public applyToWithoutCustom(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1593
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 1594
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1595
    return-void
.end method

.method public center(IIIIIIIF)V
    .locals 9
    .param p1, "centerID"    # I
    .param p2, "firstID"    # I
    .param p3, "firstSide"    # I
    .param p4, "firstMargin"    # I
    .param p5, "secondId"    # I
    .param p6, "secondSide"    # I
    .param p7, "secondMargin"    # I
    .param p8, "bias"    # F

    .line 1793
    move-object v6, p0

    move v7, p3

    move/from16 v8, p8

    const-string v0, "margin must be > 0"

    if-ltz p4, :cond_6

    .line 1796
    if-ltz p7, :cond_5

    .line 1799
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v8, v0

    if-gtz v0, :cond_4

    .line 1803
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    goto :goto_1

    .line 1808
    :cond_0
    const/4 v0, 0x6

    if-eq v7, v0, :cond_2

    const/4 v0, 0x7

    if-ne v7, v0, :cond_1

    goto :goto_0

    .line 1814
    :cond_1
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1815
    const/4 v2, 0x4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1816
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1817
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    goto :goto_2

    .line 1809
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_2
    :goto_0
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1810
    const/4 v2, 0x7

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1811
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1812
    .restart local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1813
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    goto :goto_2

    .line 1804
    :cond_3
    :goto_1
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1805
    const/4 v2, 0x2

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1806
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1807
    .restart local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1808
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    nop

    .line 1819
    :goto_2
    return-void

    .line 1800
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1797
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1794
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public centerHorizontally(II)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 2219
    if-nez p2, :cond_0

    .line 2220
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 2222
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 2224
    :goto_0
    return-void
.end method

.method public centerHorizontally(IIIIIIIF)V
    .locals 9
    .param p1, "centerID"    # I
    .param p2, "leftId"    # I
    .param p3, "leftSide"    # I
    .param p4, "leftMargin"    # I
    .param p5, "rightId"    # I
    .param p6, "rightSide"    # I
    .param p7, "rightMargin"    # I
    .param p8, "bias"    # F

    .line 1836
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1837
    const/4 v5, 0x2

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1838
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1839
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    move/from16 v3, p8

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1840
    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 2233
    if-nez p2, :cond_0

    .line 2234
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 2236
    :cond_0
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 2238
    :goto_0
    return-void
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .locals 9
    .param p1, "centerID"    # I
    .param p2, "startId"    # I
    .param p3, "startSide"    # I
    .param p4, "startMargin"    # I
    .param p5, "endId"    # I
    .param p6, "endSide"    # I
    .param p7, "endMargin"    # I
    .param p8, "bias"    # F

    .line 1858
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1859
    const/4 v5, 0x7

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1860
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1861
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    move/from16 v3, p8

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1862
    return-void
.end method

.method public centerVertically(II)V
    .locals 9
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .line 2247
    if-nez p2, :cond_0

    .line 2248
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 2250
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->center(IIIIIIIF)V

    .line 2252
    :goto_0
    return-void
.end method

.method public centerVertically(IIIIIIIF)V
    .locals 9
    .param p1, "centerID"    # I
    .param p2, "topId"    # I
    .param p3, "topSide"    # I
    .param p4, "topMargin"    # I
    .param p5, "bottomId"    # I
    .param p6, "bottomSide"    # I
    .param p7, "bottomMargin"    # I
    .param p8, "bias"    # F

    .line 1879
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1880
    const/4 v5, 0x4

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1881
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1882
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    move/from16 v3, p8

    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 1883
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "viewId"    # I

    .line 2260
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    return-void
.end method

.method public clear(II)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I

    .line 2270
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2272
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, -0x1

    packed-switch p2, :pswitch_data_0

    .line 2314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2308
    :pswitch_0
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 2309
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 2310
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 2311
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 2312
    goto :goto_0

    .line 2302
    :pswitch_1
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 2303
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 2304
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 2305
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 2306
    goto :goto_0

    .line 2299
    :pswitch_2
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 2300
    goto :goto_0

    .line 2292
    :pswitch_3
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2293
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 2294
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 2295
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 2296
    goto :goto_0

    .line 2286
    :pswitch_4
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 2287
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 2288
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 2289
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 2290
    goto :goto_0

    .line 2280
    :pswitch_5
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 2281
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 2282
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 2283
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 2284
    goto :goto_0

    .line 2274
    :pswitch_6
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 2275
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 2276
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 2277
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 2317
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constraintLayoutId"    # I

    .line 1474
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1475
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 12
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1495
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1496
    .local v0, "count":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 1498
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1499
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1501
    .local v3, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 1502
    .local v4, "id":I
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1503
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1505
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1506
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1509
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    invoke-static {v6, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->extractAttributes(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 1510
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$000(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 1511
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 1512
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_5

    .line 1513
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 1514
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 1515
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 1516
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 1517
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 1518
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 1520
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v6

    .line 1521
    .local v6, "pivotX":F
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v7

    .line 1523
    .local v7, "pivotY":F
    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_3

    float-to-double v8, v7

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_4

    .line 1524
    :cond_3
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 1525
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput v7, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 1528
    :cond_4
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 1529
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 1530
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_5

    .line 1531
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 1532
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    if-eqz v8, :cond_5

    .line 1533
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 1537
    .end local v6    # "pivotX":F
    .end local v7    # "pivotY":F
    :cond_5
    instance-of v6, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v6, :cond_6

    .line 1538
    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    .line 1539
    .local v6, "barrier":Landroidx/constraintlayout/widget/Barrier;
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->allowsGoneWidget()Z

    move-result v8

    iput-boolean v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 1540
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object v8

    iput-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1541
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 1542
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v8

    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 1497
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v4    # "id":I
    .end local v5    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v6    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1545
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 4
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1483
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1484
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1485
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 1487
    :cond_0
    return-void
.end method

.method public clone(Landroidx/constraintlayout/widget/Constraints;)V
    .locals 8
    .param p1, "constraints"    # Landroidx/constraintlayout/widget/Constraints;

    .line 1553
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Constraints;->getChildCount()I

    move-result v0

    .line 1554
    .local v0, "count":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1555
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1556
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1557
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 1559
    .local v3, "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 1560
    .local v4, "id":I
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1561
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1563
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1564
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 1567
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    instance-of v6, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v6, :cond_3

    .line 1568
    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1569
    .local v6, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-static {v5, v6, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 1571
    .end local v6    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_3
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$400(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    .line 1555
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroidx/constraintlayout/widget/Constraints$LayoutParams;
    .end local v4    # "id":I
    .end local v5    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1573
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public connect(IIII)V
    .locals 10
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I

    .line 2119
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2120
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2123
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "right to "

    const-string v8, " undefined"

    const/4 v9, -0x1

    packed-switch p2, :pswitch_data_0

    .line 2207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2208
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2196
    :pswitch_0
    if-ne p4, v2, :cond_1

    .line 2197
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 2198
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    goto/16 :goto_0

    .line 2199
    :cond_1
    if-ne p4, v3, :cond_2

    .line 2200
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 2201
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    goto/16 :goto_0

    .line 2203
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2185
    :pswitch_1
    if-ne p4, v3, :cond_3

    .line 2186
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 2187
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    goto/16 :goto_0

    .line 2188
    :cond_3
    if-ne p4, v2, :cond_4

    .line 2189
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 2190
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    goto/16 :goto_0

    .line 2192
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2174
    :pswitch_2
    const/4 v1, 0x5

    if-ne p4, v1, :cond_5

    .line 2175
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 2176
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 2177
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2178
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 2179
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_0

    .line 2181
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2161
    :pswitch_3
    if-ne p4, v4, :cond_6

    .line 2162
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 2163
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2164
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    goto/16 :goto_0

    .line 2165
    :cond_6
    if-ne p4, v5, :cond_7

    .line 2166
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2167
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 2168
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    goto/16 :goto_0

    .line 2170
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2148
    :pswitch_4
    if-ne p4, v5, :cond_8

    .line 2149
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 2150
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 2151
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    goto/16 :goto_0

    .line 2152
    :cond_8
    if-ne p4, v4, :cond_9

    .line 2153
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 2154
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 2155
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    goto :goto_0

    .line 2157
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2136
    :pswitch_5
    if-ne p4, v6, :cond_a

    .line 2137
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 2138
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    goto :goto_0

    .line 2140
    :cond_a
    if-ne p4, v1, :cond_b

    .line 2141
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 2142
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    goto :goto_0

    .line 2144
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2125
    :pswitch_6
    if-ne p4, v6, :cond_c

    .line 2126
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 2127
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    goto :goto_0

    .line 2128
    :cond_c
    if-ne p4, v1, :cond_d

    .line 2129
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 2130
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 2210
    :goto_0
    return-void

    .line 2132
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public connect(IIIII)V
    .locals 10
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I
    .param p5, "margin"    # I

    .line 2005
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2006
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2009
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "right to "

    const-string v8, " undefined"

    const/4 v9, -0x1

    packed-switch p2, :pswitch_data_0

    .line 2104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2105
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2092
    :pswitch_0
    if-ne p4, v2, :cond_1

    .line 2093
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 2094
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    goto :goto_0

    .line 2095
    :cond_1
    if-ne p4, v3, :cond_2

    .line 2096
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 2097
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 2101
    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 2102
    goto/16 :goto_6

    .line 2099
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2080
    :pswitch_1
    if-ne p4, v3, :cond_3

    .line 2081
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 2082
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    goto :goto_1

    .line 2083
    :cond_3
    if-ne p4, v2, :cond_4

    .line 2084
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 2085
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 2089
    :goto_1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 2090
    goto/16 :goto_6

    .line 2087
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2069
    :pswitch_2
    const/4 v1, 0x5

    if-ne p4, v1, :cond_5

    .line 2070
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 2071
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 2072
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2073
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 2074
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_6

    .line 2076
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2053
    :pswitch_3
    if-ne p4, v4, :cond_6

    .line 2054
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 2055
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2056
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    goto :goto_2

    .line 2058
    :cond_6
    if-ne p4, v5, :cond_7

    .line 2059
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2060
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 2061
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 2066
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 2067
    goto/16 :goto_6

    .line 2064
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2038
    :pswitch_4
    if-ne p4, v5, :cond_8

    .line 2039
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 2040
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 2041
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    goto :goto_3

    .line 2042
    :cond_8
    if-ne p4, v4, :cond_9

    .line 2043
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 2044
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 2045
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 2050
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 2051
    goto :goto_6

    .line 2048
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2024
    :pswitch_5
    if-ne p4, v6, :cond_a

    .line 2025
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 2026
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    goto :goto_4

    .line 2028
    :cond_a
    if-ne p4, v1, :cond_b

    .line 2029
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 2030
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 2035
    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 2036
    goto :goto_6

    .line 2033
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2011
    :pswitch_6
    if-ne p4, v6, :cond_c

    .line 2012
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 2013
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    goto :goto_5

    .line 2014
    :cond_c
    if-ne p4, v1, :cond_d

    .line 2015
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 2016
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 2021
    :goto_5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p5, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 2022
    nop

    .line 2107
    :goto_6
    return-void

    .line 2019
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constrainCircle(IIIF)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "id"    # I
    .param p3, "radius"    # I
    .param p4, "angle"    # F

    .line 2708
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 2709
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 2710
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 2711
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 2712
    return-void
.end method

.method public constrainDefaultHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 2793
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 2794
    return-void
.end method

.method public constrainDefaultWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 2829
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 2830
    return-void
.end method

.method public constrainHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 2683
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 2684
    return-void
.end method

.method public constrainMaxHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 2723
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 2724
    return-void
.end method

.method public constrainMaxWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 2735
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 2736
    return-void
.end method

.method public constrainMinHeight(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .line 2747
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 2748
    return-void
.end method

.method public constrainMinWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 2759
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 2760
    return-void
.end method

.method public constrainPercentHeight(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "percent"    # F

    .line 2781
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 2782
    return-void
.end method

.method public constrainPercentWidth(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "percent"    # F

    .line 2770
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 2771
    return-void
.end method

.method public constrainWidth(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .line 2695
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 2696
    return-void
.end method

.method public constrainedHeight(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "constrained"    # Z

    .line 2817
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 2818
    return-void
.end method

.method public constrainedWidth(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "constrained"    # Z

    .line 2805
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 2806
    return-void
.end method

.method public create(II)V
    .locals 3
    .param p1, "guidelineID"    # I
    .param p2, "orientation"    # I

    .line 3032
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 3033
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 3034
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 3035
    return-void
.end method

.method public varargs createBarrier(III[I)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "direction"    # I
    .param p3, "margin"    # I
    .param p4, "referenced"    # [I

    .line 3046
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 3047
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v2, 0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 3048
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 3049
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 3050
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 3051
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-object p4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 3052
    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .locals 10
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "rightId"    # I
    .param p4, "rightSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1943
    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1944
    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .locals 10
    .param p1, "startId"    # I
    .param p2, "startSide"    # I
    .param p3, "endId"    # I
    .param p4, "endSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1962
    const/4 v8, 0x6

    const/4 v9, 0x7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 1963
    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .locals 12
    .param p1, "topId"    # I
    .param p2, "topSide"    # I
    .param p3, "bottomId"    # I
    .param p4, "bottomSide"    # I
    .param p5, "chainIds"    # [I
    .param p6, "weights"    # [F
    .param p7, "style"    # I

    .line 1902
    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    array-length v0, v7

    const-string v1, "must have 2 or more widgets in a chain"

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    .line 1905
    if-eqz v8, :cond_1

    array-length v0, v8

    array-length v2, v7

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1906
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1908
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 1909
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    aget v2, v8, v0

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 1911
    :cond_2
    aget v1, v7, v0

    invoke-direct {p0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    move/from16 v9, p7

    iput v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 1913
    aget v1, v7, v0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1914
    const/4 v0, 0x1

    move v10, v0

    .local v10, "i":I
    :goto_1
    array-length v0, v7

    if-ge v10, v0, :cond_4

    .line 1915
    aget v11, v7, v10

    .line 1916
    .local v11, "chainId":I
    aget v1, v7, v10

    const/4 v2, 0x3

    add-int/lit8 v0, v10, -0x1

    aget v3, v7, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1917
    add-int/lit8 v0, v10, -0x1

    aget v1, v7, v0

    const/4 v2, 0x4

    aget v3, v7, v10

    const/4 v4, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1918
    if-eqz v8, :cond_3

    .line 1919
    aget v0, v7, v10

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    aget v1, v8, v10

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 1914
    .end local v11    # "chainId":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1922
    .end local v10    # "i":I
    :cond_4
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget v1, v7, v0

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 1923
    return-void

    .line 1903
    :cond_5
    move/from16 v9, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs dump(Landroidx/constraintlayout/motion/widget/MotionScene;[I)V
    .locals 9
    .param p1, "scene"    # Landroidx/constraintlayout/motion/widget/MotionScene;
    .param p2, "ids"    # [I

    .line 3806
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3808
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3809
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3810
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v3, p2

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, p2, v4

    .line 3811
    .local v5, "id":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3810
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3814
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3816
    .restart local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " constraints"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3819
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    new-array v4, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 3820
    .local v6, "id":Ljava/lang/Integer;
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 3822
    .local v7, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const-string v8, "<Constraint id="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3824
    const-string v8, " \n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3825
    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v8, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dump(Landroidx/constraintlayout/motion/widget/MotionScene;Ljava/lang/StringBuilder;)V

    .line 3826
    const-string v8, "/>\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    .end local v6    # "id":Ljava/lang/Integer;
    .end local v7    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3828
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3830
    return-void
.end method

.method public getApplyElevation(I)Z
    .locals 1
    .param p1, "viewId"    # I

    .line 2497
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    return v0
.end method

.method public getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 2
    .param p1, "id"    # I

    .line 3753
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3754
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    return-object v0

    .line 3756
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomAttributeSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHeight(I)I
    .locals 1
    .param p1, "viewId"    # I

    .line 2468
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    return v0
.end method

.method public getKnownIds()[I
    .locals 4

    .line 3763
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 3764
    .local v0, "arr":[Ljava/lang/Integer;
    array-length v1, v0

    new-array v1, v1, [I

    .line 3765
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 3766
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 3765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3768
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 1
    .param p1, "mId"    # I

    .line 407
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility(I)I
    .locals 1
    .param p1, "viewId"    # I

    .line 2458
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    return v0
.end method

.method public getVisibilityMode(I)I
    .locals 1
    .param p1, "viewId"    # I

    .line 2448
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    return v0
.end method

.method public getWidth(I)I
    .locals 1
    .param p1, "viewId"    # I

    .line 2478
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    return v0
.end method

.method public isForceId()Z
    .locals 1

    .line 3776
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    return v0
.end method

.method public load(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 3246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3247
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 3248
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 3249
    .local v2, "document":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3252
    .local v3, "tagName":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 3253
    .local v4, "eventType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 3255
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 3268
    :pswitch_1
    const/4 v3, 0x0

    .line 3269
    goto :goto_1

    .line 3260
    :pswitch_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 3261
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v6

    .line 3262
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    const-string v7, "Guideline"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3263
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v5, v7, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 3265
    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3266
    goto :goto_1

    .line 3257
    .end local v6    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :pswitch_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 3258
    nop

    .line 3254
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    .line 3253
    .end local v4    # "eventType":I
    :cond_1
    goto :goto_2

    .line 3276
    :catch_0
    move-exception v4

    .line 3277
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3274
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 3275
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 3278
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    nop

    .line 3279
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 3288
    const/4 v0, 0x0

    .line 3290
    .local v0, "tagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3291
    .local v1, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3292
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 3294
    const-string v4, "Constraint"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 3358
    :pswitch_1
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 3359
    const-string v3, "ConstraintSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3360
    return-void

    .line 3361
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3362
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3363
    const/4 v1, 0x0

    .line 3365
    :cond_1
    const/4 v0, 0x0

    .line 3366
    goto/16 :goto_3

    .line 3300
    :pswitch_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 3304
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "CustomAttribute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_2
    const-string v4, "Barrier"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "Guideline"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v5, v3

    goto :goto_1

    :sswitch_4
    const-string v4, "Transform"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "PropertySet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_6
    const-string v4, "Motion"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_7
    const-string v4, "Layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_2

    const/4 v5, 0x5

    :goto_1
    const-string v4, "XML parser error must be within a Constraint "

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_2

    .line 3342
    :pswitch_3
    if-eqz v1, :cond_3

    .line 3345
    :try_start_2
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-static {p1, p2, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 3343
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tagName":Ljava/lang/String;
    .end local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3

    .line 3336
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_4
    if-eqz v1, :cond_4

    .line 3339
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3340
    goto/16 :goto_2

    .line 3337
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tagName":Ljava/lang/String;
    .end local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3

    .line 3330
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_5
    if-eqz v1, :cond_5

    .line 3333
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3334
    goto/16 :goto_2

    .line 3331
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tagName":Ljava/lang/String;
    .end local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3

    .line 3324
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_6
    if-eqz v1, :cond_6

    .line 3327
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3328
    goto :goto_2

    .line 3325
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tagName":Ljava/lang/String;
    .end local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3

    .line 3318
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_7
    if-eqz v1, :cond_7

    .line 3321
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3322
    goto :goto_2

    .line 3319
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tagName":Ljava/lang/String;
    .end local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    throw v3

    .line 3314
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local p0    # "this":Landroidx/constraintlayout/widget/ConstraintSet;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    move-object v1, v4

    .line 3315
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 3316
    goto :goto_2

    .line 3309
    :pswitch_9
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v4

    move-object v1, v4

    .line 3310
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 3311
    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v3, v4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 3312
    goto :goto_2

    .line 3306
    :pswitch_a
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    move-object v1, v3

    .line 3307
    nop

    .line 3356
    :goto_2
    goto :goto_3

    .line 3296
    :pswitch_b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3298
    .local v3, "document":Ljava/lang/String;
    nop

    .line 3293
    .end local v3    # "document":Ljava/lang/String;
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v3

    goto/16 :goto_0

    .line 3292
    .end local v1    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v2    # "eventType":I
    :cond_8
    goto :goto_4

    .line 3373
    :catch_0
    move-exception v1

    .line 3374
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3371
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 3372
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 3375
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    nop

    .line 3376
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x78c018b6 -> :sswitch_7
        -0x7648542a -> :sswitch_6
        -0x4bab3dd3 -> :sswitch_5
        -0x49cf74b4 -> :sswitch_4
        -0x446d330 -> :sswitch_3
        0x4f5d3b97 -> :sswitch_2
        0x6acd460b -> :sswitch_1
        0x6b78f1fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public parseColorAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .locals 5
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "attributes"    # Ljava/lang/String;

    .line 3145
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3146
    .local v0, "sp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3147
    aget-object v2, v0, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3148
    .local v2, "attr":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 3149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConstraintSet"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3151
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$600(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;I)V

    .line 3146
    .end local v2    # "attr":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3154
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public parseFloatAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .locals 5
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "attributes"    # Ljava/lang/String;

    .line 3157
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3158
    .local v0, "sp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3159
    aget-object v2, v0, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3160
    .local v2, "attr":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 3161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConstraintSet"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3163
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$700(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;F)V

    .line 3158
    .end local v2    # "attr":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3166
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public parseIntAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .locals 5
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "attributes"    # Ljava/lang/String;

    .line 3133
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3134
    .local v0, "sp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3135
    aget-object v2, v0, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3136
    .local v2, "attr":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 3137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConstraintSet"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3139
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$700(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;F)V

    .line 3134
    .end local v2    # "attr":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3142
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public parseStringAttributes(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;)V
    .locals 5
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "attributes"    # Ljava/lang/String;

    .line 3169
    invoke-static {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3170
    .local v0, "sp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3171
    aget-object v2, v0, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3172
    .local v2, "attr":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConstraintSet"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$800(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    .end local v2    # "attr":[Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3175
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public readFallback(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 12
    .param p1, "constraintLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 452
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 453
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_9

    .line 454
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 455
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 457
    .local v3, "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 458
    .local v4, "id":I
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 461
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 462
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 465
    .local v5, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 466
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$000(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 467
    instance-of v6, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v6, :cond_3

    .line 468
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v8

    iput-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 469
    instance-of v6, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v6, :cond_3

    .line 470
    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    .line 471
    .local v6, "barrier":Landroidx/constraintlayout/widget/Barrier;
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->allowsGoneWidget()Z

    move-result v9

    iput-boolean v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 472
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 473
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 476
    .end local v6    # "barrier":Landroidx/constraintlayout/widget/Barrier;
    :cond_3
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 478
    :cond_4
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    if-nez v6, :cond_5

    .line 479
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 480
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v8

    iput v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 481
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    .line 483
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v6, v8, :cond_8

    .line 485
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    if-nez v6, :cond_8

    .line 486
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    .line 487
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 488
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 489
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 490
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 491
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v7

    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 493
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v6

    .line 494
    .local v6, "pivotX":F
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v7

    .line 496
    .local v7, "pivotY":F
    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    float-to-double v8, v7

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_7

    .line 497
    :cond_6
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput v6, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 498
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput v7, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 501
    :cond_7
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 502
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 503
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_8

    .line 504
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 505
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v8, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    if-eqz v8, :cond_8

    .line 506
    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v9

    iput v9, v8, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 453
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "param":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v4    # "id":I
    .end local v5    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v6    # "pivotX":F
    .end local v7    # "pivotY":F
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 512
    .end local v1    # "i":I
    :cond_9
    return-void
.end method

.method public readFallback(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 9
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 417
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 418
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 419
    .local v2, "id":I
    iget-object v3, p1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 421
    .local v3, "parent":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 422
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 425
    .local v4, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    if-nez v5, :cond_1

    .line 426
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V

    .line 428
    :cond_1
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    if-nez v5, :cond_2

    .line 429
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;)V

    .line 431
    :cond_2
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    if-nez v5, :cond_3

    .line 432
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Transform;)V

    .line 434
    :cond_3
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    if-nez v5, :cond_4

    .line 435
    iget-object v5, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v6, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Motion;)V

    .line 437
    :cond_4
    iget-object v5, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 438
    .local v6, "s":Ljava/lang/String;
    iget-object v7, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 439
    iget-object v7, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iget-object v8, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .end local v6    # "s":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 442
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "id":I
    .end local v3    # "parent":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v4    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    :cond_6
    goto/16 :goto_0

    .line 443
    :cond_7
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 3097
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    return-void
.end method

.method public removeFromHorizontalChain(I)V
    .locals 11
    .param p1, "viewId"    # I

    .line 2980
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2981
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2982
    .local v6, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 2983
    .local v7, "leftId":I
    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 2984
    .local v8, "rightId":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_6

    if-eq v8, v0, :cond_0

    goto :goto_1

    .line 3002
    :cond_0
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v9, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 3003
    .local v9, "startId":I
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v10, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 3004
    .local v10, "endId":I
    if-ne v9, v0, :cond_1

    if-eq v10, v0, :cond_5

    .line 3005
    :cond_1
    if-eq v9, v0, :cond_2

    if-eq v10, v0, :cond_2

    .line 3007
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v9

    move v3, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 3008
    const/4 v2, 0x6

    const/4 v4, 0x7

    move v1, v10

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 3009
    :cond_2
    if-ne v7, v0, :cond_3

    if-eq v10, v0, :cond_5

    .line 3010
    :cond_3
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    if-eq v1, v0, :cond_4

    .line 3012
    const/4 v2, 0x7

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 3013
    :cond_4
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    if-eq v1, v0, :cond_5

    .line 3015
    const/4 v2, 0x6

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 3019
    :cond_5
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 3020
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    goto :goto_3

    .line 2985
    .end local v9    # "startId":I
    .end local v10    # "endId":I
    :cond_6
    :goto_1
    if-eq v7, v0, :cond_7

    if-eq v8, v0, :cond_7

    .line 2987
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2988
    const/4 v2, 0x1

    const/4 v4, 0x2

    move v1, v8

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 2989
    :cond_7
    if-ne v7, v0, :cond_8

    if-eq v8, v0, :cond_a

    .line 2990
    :cond_8
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    if-eq v1, v0, :cond_9

    .line 2992
    const/4 v2, 0x2

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 2993
    :cond_9
    iget-object v1, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    if-eq v1, v0, :cond_a

    .line 2995
    const/4 v2, 0x1

    iget-object v0, v6, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2998
    :cond_a
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2999
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 3023
    .end local v6    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v7    # "leftId":I
    .end local v8    # "rightId":I
    :cond_b
    :goto_3
    return-void
.end method

.method public removeFromVerticalChain(I)V
    .locals 10
    .param p1, "viewId"    # I

    .line 2948
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2949
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2950
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 2951
    .local v1, "topId":I
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v9, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 2952
    .local v9, "bottomId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eq v9, v2, :cond_4

    .line 2953
    :cond_0
    if-eq v1, v2, :cond_1

    if-eq v9, v2, :cond_1

    .line 2955
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2956
    const/4 v4, 0x3

    const/4 v6, 0x4

    move v3, v9

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 2957
    :cond_1
    if-ne v1, v2, :cond_2

    if-eq v9, v2, :cond_4

    .line 2958
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    if-eq v3, v2, :cond_3

    .line 2960
    const/4 v4, 0x4

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 2961
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    if-eq v3, v2, :cond_4

    .line 2963
    const/4 v5, 0x3

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 2968
    .end local v0    # "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v1    # "topId":I
    .end local v9    # "bottomId":I
    :cond_4
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2969
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 2970
    return-void
.end method

.method public setAlpha(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "alpha"    # F

    .line 2488
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 2489
    return-void
.end method

.method public setApplyElevation(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "apply"    # Z

    .line 2508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2509
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput-boolean p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 2511
    :cond_0
    return-void
.end method

.method public setBarrierType(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 3092
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 3093
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 3094
    return-void
.end method

.method public setColorValue(ILjava/lang/String;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 3105
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$600(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;I)V

    .line 3106
    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "ratio"    # Ljava/lang/String;

    .line 2417
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-object p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 2418
    return-void
.end method

.method public setEditorAbsoluteX(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .line 2664
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 2665
    return-void
.end method

.method public setEditorAbsoluteY(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .line 2671
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 2672
    return-void
.end method

.method public setElevation(IF)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "elevation"    # F

    .line 2520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2521
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 2522
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 2524
    :cond_0
    return-void
.end method

.method public setFloatValue(ILjava/lang/String;F)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 3109
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$700(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;F)V

    .line 3110
    return-void
.end method

.method public setForceId(Z)V
    .locals 0
    .param p1, "forceId"    # Z

    .line 3786
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    .line 3787
    return-void
.end method

.method public setGoneMargin(III)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .line 2362
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 2363
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_0

    .line 2385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2382
    :pswitch_0
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 2383
    goto :goto_0

    .line 2379
    :pswitch_1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 2380
    goto :goto_0

    .line 2377
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2374
    :pswitch_3
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 2375
    goto :goto_0

    .line 2371
    :pswitch_4
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 2372
    goto :goto_0

    .line 2368
    :pswitch_5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 2369
    goto :goto_0

    .line 2365
    :pswitch_6
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 2366
    nop

    .line 2387
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .line 3061
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 3062
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 3063
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 3065
    return-void
.end method

.method public setGuidelineEnd(II)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .line 3074
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 3075
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 3076
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 3077
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .locals 2
    .param p1, "guidelineID"    # I
    .param p2, "ratio"    # F

    .line 3086
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 3087
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 3088
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 3089
    return-void
.end method

.method public setHorizontalBias(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .line 2396
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 2397
    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "chainStyle"    # I

    .line 2867
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 2868
    return-void
.end method

.method public setHorizontalWeight(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "weight"    # F

    .line 2840
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 2841
    return-void
.end method

.method public setIntValue(ILjava/lang/String;I)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 3101
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$500(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;I)V

    .line 3102
    return-void
.end method

.method public setMargin(III)V
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .line 2327
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 2328
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_0

    .line 2350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2347
    :pswitch_0
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 2348
    goto :goto_0

    .line 2344
    :pswitch_1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 2345
    goto :goto_0

    .line 2342
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2339
    :pswitch_3
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 2340
    goto :goto_0

    .line 2336
    :pswitch_4
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 2337
    goto :goto_0

    .line 2333
    :pswitch_5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 2334
    goto :goto_0

    .line 2330
    :pswitch_6
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 2331
    nop

    .line 2352
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRotation(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rotation"    # F

    .line 2533
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 2534
    return-void
.end method

.method public setRotationX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rotationX"    # F

    .line 2543
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 2544
    return-void
.end method

.method public setRotationY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rotationY"    # F

    .line 2553
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 2554
    return-void
.end method

.method public setScaleX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "scaleX"    # F

    .line 2563
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 2564
    return-void
.end method

.method public setScaleY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "scaleY"    # F

    .line 2573
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 2574
    return-void
.end method

.method public setStringValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 3113
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->access$800(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    return-void
.end method

.method public setTransformPivot(IFF)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "transformPivotX"    # F
    .param p3, "transformPivotY"    # F

    .line 2610
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 2611
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 2612
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 2613
    return-void
.end method

.method public setTransformPivotX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "transformPivotX"    # F

    .line 2585
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 2586
    return-void
.end method

.method public setTransformPivotY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "transformPivotY"    # F

    .line 2597
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 2598
    return-void
.end method

.method public setTranslation(IFF)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 2643
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 2644
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 2645
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 2646
    return-void
.end method

.method public setTranslationX(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "translationX"    # F

    .line 2622
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 2623
    return-void
.end method

.method public setTranslationY(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "translationY"    # F

    .line 2632
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 2633
    return-void
.end method

.method public setTranslationZ(IF)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "translationZ"    # F

    .line 2655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2656
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 2658
    :cond_0
    return-void
.end method

.method public setValidateOnParse(Z)V
    .locals 0
    .param p1, "validate"    # Z

    .line 3796
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mValidate:Z

    .line 3797
    return-void
.end method

.method public setVerticalBias(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .line 2406
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 2407
    return-void
.end method

.method public setVerticalChainStyle(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "chainStyle"    # I

    .line 2883
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 2884
    return-void
.end method

.method public setVerticalWeight(IF)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "weight"    # F

    .line 2851
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 2852
    return-void
.end method

.method public setVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .line 2427
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 2428
    return-void
.end method

.method public setVisibilityMode(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibilityMode"    # I

    .line 2438
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 2439
    return-void
.end method
