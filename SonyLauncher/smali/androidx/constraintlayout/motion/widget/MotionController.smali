.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "MotionController.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

.field private mAttributeInterpCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mPathMotionArc:I

.field private mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 72
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 73
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 75
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 76
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 80
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->MAX_DIMENSION:I

    .line 90
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 99
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 106
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .locals 9
    .param p1, "position"    # F
    .param p2, "velocity"    # [F

    .line 790
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 791
    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, v0

    goto :goto_0

    .line 792
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 793
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    .line 794
    const/4 p1, 0x0

    .line 796
    :cond_1
    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    float-to-double v6, p1

    cmpg-double v3, v6, v4

    if-gez v3, :cond_2

    .line 797
    sub-float/2addr p1, v2

    .line 798
    mul-float/2addr p1, v1

    .line 803
    :cond_2
    :goto_0
    move v1, p1

    .line 804
    .local v1, "adjusted":F
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 805
    .local v2, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    const/4 v3, 0x0

    .line 806
    .local v3, "start":F
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 807
    .local v4, "end":F
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 808
    .local v6, "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v7, :cond_4

    .line 809
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v7, v7, p1

    if-gez v7, :cond_3

    .line 810
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 811
    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    goto :goto_2

    .line 813
    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 814
    iget v4, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 818
    .end local v6    # "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :cond_4
    :goto_2
    goto :goto_1

    .line 820
    :cond_5
    if-eqz v2, :cond_7

    .line 821
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 822
    const/high16 v4, 0x3f800000    # 1.0f

    .line 824
    :cond_6
    sub-float v5, p1, v3

    sub-float v6, v4, v3

    div-float/2addr v5, v6

    .line 825
    .local v5, "offset":F
    float-to-double v6, v5

    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 826
    .local v6, "new_offset":F
    sub-float v7, v4, v3

    mul-float/2addr v7, v6

    add-float v1, v7, v3

    .line 827
    if-eqz p2, :cond_7

    .line 828
    float-to-double v7, v5

    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/motion/utils/Easing;->getDiff(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, p2, v0

    .line 831
    .end local v5    # "offset":F
    .end local v6    # "new_offset":F
    :cond_7
    return v1
.end method

.method private getPreCycleDistance()F
    .locals 22

    .line 202
    move-object/from16 v0, p0

    const/16 v1, 0x64

    .line 203
    .local v1, "pointCount":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 204
    .local v2, "points":[F
    const/4 v3, 0x0

    .line 205
    .local v3, "sum":F
    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    .line 206
    .local v5, "mils":F
    const-wide/16 v6, 0x0

    .local v6, "x":D
    const-wide/16 v8, 0x0

    .line 207
    .local v8, "y":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 208
    int-to-float v10, v4

    mul-float/2addr v10, v5

    .line 210
    .local v10, "position":F
    float-to-double v11, v10

    .line 212
    .local v11, "p":D
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 213
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    const/4 v14, 0x0

    .line 214
    .local v14, "start":F
    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 215
    .local v15, "end":F
    move/from16 v16, v1

    .end local v1    # "pointCount":I
    .local v16, "pointCount":I
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 216
    .local v1, "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move/from16 v17, v5

    .end local v5    # "mils":F
    .local v17, "mils":F
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v5, :cond_1

    .line 217
    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_0

    .line 218
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 219
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v5, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    iget v13, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v14, v13

    move-object v13, v5

    .end local v14    # "start":F
    .local v13, "start":F
    goto :goto_2

    .line 221
    .end local v5    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v14    # "start":F
    :cond_0
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v15, v5

    .line 226
    .end local v1    # "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :cond_1
    :goto_2
    move/from16 v5, v17

    move-object/from16 v1, v18

    goto :goto_1

    .line 228
    .end local v17    # "mils":F
    .local v5, "mils":F
    :cond_2
    move/from16 v17, v5

    .end local v5    # "mils":F
    .restart local v17    # "mils":F
    if-eqz v13, :cond_4

    .line 229
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    const/high16 v1, 0x3f800000    # 1.0f

    move v15, v1

    .line 232
    :cond_3
    sub-float v1, v10, v14

    sub-float v5, v15, v14

    div-float/2addr v1, v5

    .line 233
    .local v1, "offset":F
    move v5, v10

    move-wide/from16 v18, v11

    .end local v10    # "position":F
    .end local v11    # "p":D
    .local v5, "position":F
    .local v18, "p":D
    float-to-double v10, v1

    invoke-virtual {v13, v10, v11}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 234
    sub-float v10, v15, v14

    mul-float/2addr v10, v1

    add-float/2addr v10, v14

    float-to-double v11, v10

    .end local v18    # "p":D
    .restart local v11    # "p":D
    goto :goto_3

    .line 228
    .end local v1    # "offset":F
    .end local v5    # "position":F
    .restart local v10    # "position":F
    :cond_4
    move v5, v10

    move-wide/from16 v18, v11

    .line 238
    .end local v10    # "position":F
    .restart local v5    # "position":F
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v10, 0x0

    aget-object v1, v1, v10

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v11, v12, v10}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 239
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move/from16 v19, v5

    .end local v5    # "position":F
    .local v19, "position":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    const/4 v0, 0x0

    invoke-virtual {v1, v10, v5, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 240
    const/4 v1, 0x1

    if-lez v4, :cond_5

    .line 241
    move-wide/from16 v20, v11

    .end local v11    # "p":D
    .local v20, "p":D
    float-to-double v10, v3

    aget v5, v2, v1

    move-object/from16 v18, v13

    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v18, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    float-to-double v12, v5

    sub-double v12, v8, v12

    aget v5, v2, v0

    float-to-double v0, v5

    sub-double v0, v6, v0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    add-double/2addr v10, v0

    double-to-float v0, v10

    move v3, v0

    .end local v3    # "sum":F
    .local v0, "sum":F
    goto :goto_4

    .line 240
    .end local v0    # "sum":F
    .end local v18    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .end local v20    # "p":D
    .restart local v3    # "sum":F
    .restart local v11    # "p":D
    .restart local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    :cond_5
    move-wide/from16 v20, v11

    move-object/from16 v18, v13

    .line 243
    .end local v11    # "p":D
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v18    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v20    # "p":D
    :goto_4
    const/4 v0, 0x0

    aget v0, v2, v0

    float-to-double v6, v0

    .line 244
    const/4 v0, 0x1

    aget v0, v2, v0

    float-to-double v8, v0

    .line 207
    .end local v14    # "start":F
    .end local v15    # "end":F
    .end local v18    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .end local v19    # "position":F
    .end local v20    # "p":D
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v5, v17

    goto/16 :goto_0

    .line 246
    .end local v4    # "i":I
    .end local v16    # "pointCount":I
    .end local v17    # "mils":F
    .local v1, "pointCount":I
    .local v5, "mils":F
    :cond_6
    return v3
.end method

.method private insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3
    .param p1, "point"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 358
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 359
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KeyPath positon \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" outside of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 363
    return-void
.end method

.method private readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 4
    .param p1, "motionPaths"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 740
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 741
    return-void
.end method


# virtual methods
.method addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .locals 1
    .param p1, "key"    # Landroidx/constraintlayout/motion/widget/Key;

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/Key;>;"
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    return-void
.end method

.method buildKeyFrames([F[I)I
    .locals 8
    .param p1, "keyFrames"    # [F
    .param p2, "mode"    # [I

    .line 271
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    .line 274
    .local v2, "time":[D
    if-eqz p2, :cond_1

    .line 275
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 276
    .local v4, "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    aput v6, p2, v1

    .line 277
    .end local v4    # "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move v1, v5

    goto :goto_0

    .line 278
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_0
    const/4 v1, 0x0

    .line 281
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 282
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v4, v4, v0

    aget-wide v5, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 283
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 284
    add-int/lit8 v1, v1, 0x2

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 286
    .end local v3    # "i":I
    :cond_2
    div-int/lit8 v0, v1, 0x2

    return v0

    .line 288
    .end local v1    # "count":I
    .end local v2    # "time":[D
    :cond_3
    return v0
.end method

.method buildPath([FI)V
    .locals 18
    .param p1, "points"    # [F
    .param p2, "pointCount"    # I

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 136
    .local v3, "mils":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v6, "translationX"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 137
    .local v5, "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v9, "translationY"

    if-nez v8, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 138
    .local v8, "trans_y":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v10, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 139
    .local v6, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_2
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 141
    .local v7, "osc_y":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v2, :cond_10

    .line 142
    int-to-float v10, v9

    mul-float/2addr v10, v3

    .line 143
    .local v10, "position":F
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    cmpl-float v12, v11, v4

    if-eqz v12, :cond_5

    .line 144
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v13, v10, v12

    if-gez v13, :cond_4

    .line 145
    const/4 v10, 0x0

    .line 147
    :cond_4
    cmpl-float v13, v10, v12

    if-lez v13, :cond_5

    float-to-double v13, v10

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v13, v15

    if-gez v13, :cond_5

    .line 148
    sub-float/2addr v10, v12

    .line 149
    mul-float/2addr v10, v11

    .line 152
    :cond_5
    float-to-double v11, v10

    .line 154
    .local v11, "p":D
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 155
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    const/4 v14, 0x0

    .line 156
    .local v14, "start":F
    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 157
    .local v15, "end":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 158
    .local v2, "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move/from16 v17, v3

    .end local v3    # "mils":F
    .local v17, "mils":F
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v3, :cond_7

    .line 159
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v3, v3, v10

    if-gez v3, :cond_6

    .line 160
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 161
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v3, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v14, v13

    move-object v13, v3

    .end local v14    # "start":F
    .local v13, "start":F
    goto :goto_6

    .line 163
    .end local v3    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v14    # "start":F
    :cond_6
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 164
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v15, v3

    .line 168
    .end local v2    # "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :cond_7
    :goto_6
    move/from16 v2, p2

    move/from16 v3, v17

    goto :goto_5

    .line 170
    .end local v17    # "mils":F
    .local v3, "mils":F
    :cond_8
    move/from16 v17, v3

    .end local v3    # "mils":F
    .restart local v17    # "mils":F
    if-eqz v13, :cond_a

    .line 171
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    const/high16 v15, 0x3f800000    # 1.0f

    .line 174
    :cond_9
    sub-float v2, v10, v14

    sub-float v3, v15, v14

    div-float/2addr v2, v3

    .line 175
    .local v2, "offset":F
    float-to-double v3, v2

    invoke-virtual {v13, v3, v4}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v3

    double-to-float v2, v3

    .line 176
    sub-float v3, v15, v14

    mul-float/2addr v3, v2

    add-float/2addr v3, v14

    float-to-double v11, v3

    .line 180
    .end local v2    # "offset":F
    :cond_a
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v11, v12, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 181
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v2, :cond_b

    .line 182
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v4, v3

    if-lez v4, :cond_b

    .line 183
    invoke-virtual {v2, v11, v12, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 186
    :cond_b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v0, v9, 0x2

    invoke-virtual {v2, v3, v4, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 188
    if-eqz v6, :cond_c

    .line 189
    mul-int/lit8 v0, v9, 0x2

    aget v2, v1, v0

    invoke-virtual {v6, v10}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    goto :goto_7

    .line 190
    :cond_c
    if-eqz v5, :cond_d

    .line 191
    mul-int/lit8 v0, v9, 0x2

    aget v2, v1, v0

    invoke-virtual {v5, v10}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 193
    :cond_d
    :goto_7
    if-eqz v7, :cond_e

    .line 194
    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v2, v1, v0

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    goto :goto_8

    .line 195
    :cond_e
    if-eqz v8, :cond_f

    .line 196
    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v2, v1, v0

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 141
    .end local v10    # "position":F
    .end local v11    # "p":D
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .end local v14    # "start":F
    .end local v15    # "end":F
    :cond_f
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, v17

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 199
    .end local v9    # "i":I
    .end local v17    # "mils":F
    .restart local v3    # "mils":F
    :cond_10
    return-void
.end method

.method buildRect(F[FI)V
    .locals 4
    .param p1, "p"    # F
    .param p2, "path"    # [F
    .param p3, "offset"    # I

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result p1

    .line 307
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 308
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    .line 309
    return-void
.end method

.method buildRectangles([FI)V
    .locals 7
    .param p1, "path"    # [F
    .param p2, "pointCount"    # I

    .line 312
    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 313
    .local v1, "mils":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 314
    int-to-float v2, v0

    mul-float/2addr v2, v1

    .line 315
    .local v2, "position":F
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v2

    .line 316
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    float-to-double v4, v2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 317
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v6, v0, 0x8

    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    .line 313
    .end local v2    # "position":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .locals 4
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "points"    # [F
    .param p3, "pointCount"    # I

    .line 294
    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 295
    .local v1, "mils":F
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 296
    .local v0, "spline":Landroidx/constraintlayout/motion/widget/SplineSet;
    if-nez v0, :cond_0

    .line 297
    const/4 v2, -0x1

    return v2

    .line 299
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 300
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    div-int v3, v2, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v3

    aput v3, p2, v2

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v2    # "j":I
    :cond_1
    array-length v2, p2

    return v2
.end method

.method getDpDt(FFF[F)V
    .locals 12
    .param p1, "position"    # F
    .param p2, "locationX"    # F
    .param p3, "locationY"    # F
    .param p4, "mAnchorDpDt"    # [F

    .line 968
    move-object v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move v2, p1

    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    .line 970
    .end local p1    # "position":F
    .local v8, "position":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 971
    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 972
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 973
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget v9, v1, v2

    .line 974
    .local v9, "v":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v2, v6

    if-ge v1, v2, :cond_0

    .line 975
    aget-wide v2, v6, v1

    float-to-double v4, v9

    mul-double/2addr v2, v4

    aput-wide v2, v6, v1

    .line 974
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_2

    .line 979
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_1

    .line 980
    float-to-double v3, v8

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 981
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v2, v8

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 982
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 984
    :cond_1
    return-void

    .line 986
    :cond_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 987
    return-void

    .line 990
    .end local v9    # "v":F
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v1, v3

    .line 991
    .local v1, "dleft":F
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v3, v4

    .line 992
    .local v3, "dTop":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v4, v5

    .line 993
    .local v4, "dWidth":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v5, v6

    .line 994
    .local v5, "dHeight":F
    add-float v6, v1, v4

    .line 995
    .local v6, "dRight":F
    add-float v7, v3, v5

    .line 996
    .local v7, "dBottom":F
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, p2

    mul-float/2addr v10, v1

    mul-float v11, v6, p2

    add-float/2addr v10, v11

    aput v10, p4, v2

    .line 997
    sub-float/2addr v9, p3

    mul-float/2addr v9, v3

    mul-float v2, v7, p3

    add-float/2addr v9, v2

    const/4 v2, 0x1

    aput v9, p4, v2

    .line 998
    return-void
.end method

.method public getDrawPath()I
    .locals 4

    .line 1081
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 1082
    .local v0, "mode":I
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 1083
    .local v2, "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1084
    .end local v2    # "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    goto :goto_0

    .line 1085
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1086
    return v0
.end method

.method getFinalX()F
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method getFinalY()F
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .locals 1
    .param p1, "i"    # I

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    return-object v0
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 13
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 1149
    const/4 v0, 0x0

    .line 1150
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1151
    .local v1, "cursor":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1153
    .local v2, "pos":[F
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    .line 1154
    .local v4, "key":Landroidx/constraintlayout/motion/widget/Key;
    iget v5, v4, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    if-eq v5, p1, :cond_0

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 1155
    goto :goto_0

    .line 1157
    :cond_0
    move v5, v1

    .line 1158
    .local v5, "len":I
    const/4 v6, 0x0

    aput v6, p2, v1

    .line 1160
    add-int/lit8 v1, v1, 0x1

    iget v7, v4, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    aput v7, p2, v1

    .line 1161
    const/4 v7, 0x1

    add-int/2addr v1, v7

    iget v8, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    aput v8, p2, v1

    .line 1163
    iget v8, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    .line 1164
    .local v8, "time":F
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v9, v9, v6

    float-to-double v10, v8

    iget-object v12, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v9, v10, v11, v12}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1165
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v11, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v9, v10, v11, v2, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 1166
    add-int/2addr v1, v7

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    aput v6, p2, v1

    .line 1167
    add-int/2addr v1, v7

    aget v6, v2, v7

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    aput v6, p2, v1

    .line 1168
    instance-of v6, v4, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v6, :cond_1

    .line 1169
    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 1170
    .local v6, "kp":Landroidx/constraintlayout/motion/widget/KeyPosition;
    add-int/lit8 v1, v1, 0x1

    iget v9, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    aput v9, p2, v1

    .line 1172
    add-int/2addr v1, v7

    iget v9, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    aput v9, p2, v1

    .line 1173
    add-int/2addr v1, v7

    iget v9, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    aput v9, p2, v1

    .line 1175
    .end local v6    # "kp":Landroidx/constraintlayout/motion/widget/KeyPosition;
    :cond_1
    add-int/2addr v1, v7

    .line 1176
    sub-int v6, v1, v5

    aput v6, p2, v5

    .line 1177
    nop

    .end local v4    # "key":Landroidx/constraintlayout/motion/widget/Key;
    .end local v8    # "time":F
    add-int/lit8 v0, v0, 0x1

    .line 1178
    goto :goto_0

    .line 1180
    .end local v5    # "len":I
    :cond_2
    return v0
.end method

.method getKeyFrameParameter(IFF)F
    .locals 12
    .param p1, "type"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 323
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v0, v1

    .line 324
    .local v0, "dx":F
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v1, v2

    .line 325
    .local v1, "dy":F
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 326
    .local v2, "startCenterX":F
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 327
    .local v3, "startCenterY":F
    float-to-double v4, v0

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 328
    .local v4, "hypot":F
    float-to-double v5, v4

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 329
    const/high16 v5, 0x7fc00000    # Float.NaN

    return v5

    .line 332
    :cond_0
    sub-float v5, p2, v2

    .line 333
    .local v5, "vx":F
    sub-float v6, p3, v3

    .line 334
    .local v6, "vy":F
    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 335
    .local v7, "distFromStart":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-nez v9, :cond_1

    .line 336
    return v8

    .line 338
    :cond_1
    mul-float v9, v5, v0

    mul-float v10, v6, v1

    add-float/2addr v9, v10

    .line 340
    .local v9, "pathDistance":F
    packed-switch p1, :pswitch_data_0

    .line 354
    return v8

    .line 352
    :pswitch_0
    div-float v8, v6, v1

    return v8

    .line 350
    :pswitch_1
    div-float v8, v5, v1

    return v8

    .line 348
    :pswitch_2
    div-float v8, v6, v0

    return v8

    .line 346
    :pswitch_3
    div-float v8, v5, v0

    return v8

    .line 344
    :pswitch_4
    mul-float v8, v4, v4

    mul-float v10, v9, v9

    sub-float/2addr v8, v10

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    return v8

    .line 342
    :pswitch_5
    div-float v8, v9, v4

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .locals 11
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 250
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 251
    .local v0, "start":Landroid/graphics/RectF;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 252
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 253
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 254
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 255
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object v8, v1

    .line 256
    .local v8, "end":Landroid/graphics/RectF;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v1, v8, Landroid/graphics/RectF;->left:F

    .line 257
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v1, v8, Landroid/graphics/RectF;->top:F

    .line 258
    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v1, v2

    iput v1, v8, Landroid/graphics/RectF;->right:F

    .line 259
    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v1, v2

    iput v1, v8, Landroid/graphics/RectF;->bottom:F

    .line 260
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/motion/widget/Key;

    .line 261
    .local v10, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v1, v10, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    if-eqz v1, :cond_0

    .line 262
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    move v2, p1

    move v3, p2

    move-object v4, v0

    move-object v5, v8

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    return-object v1

    .line 266
    .end local v10    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .locals 25
    .param p1, "position"    # F
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "locationX"    # F
    .param p5, "locationY"    # F
    .param p6, "mAnchorDpDt"    # [F

    .line 1015
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    .line 1017
    .end local p1    # "position":F
    .local v8, "position":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v2, "translationX"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_0
    move-object v9, v1

    .line 1018
    .local v9, "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v4, "translationY"

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_1
    move-object v10, v1

    .line 1019
    .local v10, "trans_y":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v5, "rotation"

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_2
    move-object v11, v1

    .line 1020
    .local v11, "rotation":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v6, "scaleX"

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_3
    move-object v12, v1

    .line 1021
    .local v12, "scale_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v7, "scaleY"

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_4
    move-object v13, v1

    .line 1023
    .local v13, "scale_y":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_5

    move-object v1, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_5
    move-object v14, v1

    .line 1024
    .local v14, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_6

    move-object v1, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_6
    move-object v15, v1

    .line 1025
    .local v15, "osc_y":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_7

    move-object v1, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_7
    move-object v5, v1

    .line 1026
    .local v5, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_8

    move-object v1, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_8
    move-object v6, v1

    .line 1027
    .local v6, "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_9
    move-object v7, v3

    .line 1029
    .local v7, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    new-instance v1, Landroidx/constraintlayout/motion/utils/VelocityMatrix;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;-><init>()V

    move-object v4, v1

    .line 1030
    .local v4, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->clear()V

    .line 1031
    invoke-virtual {v4, v11, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1032
    invoke-virtual {v4, v9, v10, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1033
    invoke-virtual {v4, v12, v13, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1034
    invoke-virtual {v4, v5, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1035
    invoke-virtual {v4, v14, v15, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1036
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1037
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_b

    .line 1038
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_a

    .line 1039
    move-object/from16 p1, v4

    .end local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local p1, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    float-to-double v3, v8

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1040
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v2, v8

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1041
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move-object/from16 v16, v2

    move/from16 v2, p4

    move-object/from16 v17, v3

    move/from16 v3, p5

    move-object/from16 v18, p1

    move-object/from16 v19, v4

    .end local p1    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local v18, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    move-object/from16 v4, p6

    move-object/from16 p1, v14

    move-object v14, v5

    .end local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local p1, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move-object/from16 v5, v19

    move-object/from16 v20, v6

    .end local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v20, "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move-object/from16 v6, v17

    move-object/from16 v21, v7

    .end local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v21, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto :goto_a

    .line 1038
    .end local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 p1, v14

    move-object v14, v5

    .line 1043
    .end local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_a
    move-object/from16 v1, v18

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1044
    return-void

    .line 1046
    .end local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :cond_b
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 p1, v14

    move-object v14, v5

    .end local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 1047
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-direct {v0, v8, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    .line 1048
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1049
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1050
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget v7, v1, v2

    .line 1051
    .local v7, "v":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v2, v6

    if-ge v1, v2, :cond_c

    .line 1052
    aget-wide v2, v6, v1

    float-to-double v4, v7

    mul-double/2addr v2, v4

    aput-wide v2, v6, v1

    .line 1051
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1054
    .end local v1    # "i":I
    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v16, v4

    move-object/from16 v4, p6

    move/from16 v17, v7

    .end local v7    # "v":F
    .local v17, "v":F
    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 1056
    move-object/from16 v1, v18

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1057
    return-void

    .line 1061
    .end local v17    # "v":F
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float v7, v1, v3

    .line 1062
    .local v7, "dleft":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float v16, v1, v3

    .line 1063
    .local v16, "dTop":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v17, v1, v3

    .line 1064
    .local v17, "dWidth":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v19, v1, v3

    .line 1065
    .local v19, "dHeight":F
    add-float v22, v7, v17

    .line 1066
    .local v22, "dRight":F
    add-float v23, v16, v19

    .line 1067
    .local v23, "dBottom":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, p4

    mul-float/2addr v3, v7

    mul-float v4, v22, p4

    add-float/2addr v3, v4

    aput v3, p6, v2

    .line 1068
    sub-float v1, v1, p5

    mul-float v1, v1, v16

    mul-float v2, v23, p5

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, p6, v2

    .line 1070
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->clear()V

    .line 1071
    move-object/from16 v6, v18

    .end local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local v6, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    invoke-virtual {v6, v11, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1072
    invoke-virtual {v6, v9, v10, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1073
    invoke-virtual {v6, v12, v13, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1074
    invoke-virtual {v6, v14, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1075
    move-object/from16 v5, p1

    .end local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v5, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    invoke-virtual {v6, v5, v15, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1076
    move-object/from16 v4, v20

    move-object/from16 v3, v21

    .end local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v3, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v4, "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    invoke-virtual {v6, v4, v3, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1077
    move-object v1, v6

    move/from16 v2, p4

    move-object/from16 v18, v3

    .end local v3    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v18, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move/from16 v3, p5

    .end local v4    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move/from16 v4, p2

    move-object/from16 v21, v5

    .end local v5    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v21, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move/from16 v5, p3

    move-object/from16 v24, v6

    .end local v6    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local v24, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1078
    return-void
.end method

.method getStartX()F
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method getStartY()F
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method public getkeyFramePositions([I[F)I
    .locals 9
    .param p1, "type"    # [I
    .param p2, "pos"    # [F

    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1122
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    .line 1123
    .local v3, "key":Landroidx/constraintlayout/motion/widget/Key;
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v6, v3, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    aput v5, p1, v0

    .line 1124
    iget v0, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    .line 1125
    .local v0, "time":F
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    float-to-double v6, v0

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1126
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v5, v6, v7, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 1127
    nop

    .end local v0    # "time":F
    .end local v3    # "key":Landroidx/constraintlayout/motion/widget/Key;
    add-int/lit8 v1, v1, 0x2

    .line 1128
    move v0, v4

    goto :goto_0

    .line 1130
    .end local v4    # "i":I
    .local v0, "i":I
    :cond_0
    return v0
.end method

.method interpolate(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "global_position"    # F
    .param p3, "time"    # J
    .param p5, "keyCache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 845
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    .line 846
    .local v1, "timeAnimation":Z
    const/4 v2, 0x0

    move/from16 v12, p2

    invoke-direct {v0, v12, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v13

    .line 848
    .local v13, "position":F
    const/4 v2, 0x0

    .line 849
    .local v2, "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 851
    .local v4, "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    invoke-virtual {v4, v11, v13}, Landroidx/constraintlayout/motion/widget/SplineSet;->setProperty(Landroid/view/View;F)V

    .line 852
    .end local v4    # "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    goto :goto_0

    .line 855
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 856
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    move-object v9, v2

    .end local v1    # "timeAnimation":Z
    .end local v2    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    .local v8, "timeAnimation":Z
    .local v9, "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    .line 857
    .local v10, "aSpline":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    instance-of v1, v10, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    if-eqz v1, :cond_1

    .line 858
    move-object v9, v10

    check-cast v9, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    .line 859
    goto :goto_1

    .line 861
    :cond_1
    move-object v1, v10

    move-object/from16 v2, p1

    move v3, v13

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 862
    .end local v10    # "aSpline":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_1

    .line 856
    :cond_2
    move v14, v8

    move-object v15, v9

    goto :goto_2

    .line 855
    .end local v8    # "timeAnimation":Z
    .end local v9    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    .restart local v1    # "timeAnimation":Z
    .restart local v2    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    :cond_3
    move v14, v1

    move-object v15, v2

    .line 867
    .end local v1    # "timeAnimation":Z
    .end local v2    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    .local v14, "timeAnimation":Z
    .local v15, "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/16 v16, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_d

    .line 868
    aget-object v1, v1, v9

    float-to-double v2, v13

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 869
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v9

    float-to-double v2, v13

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 870
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_4

    .line 871
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_4

    .line 872
    float-to-double v3, v13

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 873
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v2, v13

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 876
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(Landroid/view/View;[I[D[D[D)V

    .line 877
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 878
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 879
    .local v10, "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    instance-of v1, v10, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    if-eqz v1, :cond_5

    .line 880
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    aget-wide v4, v2, v9

    aget-wide v6, v2, v16

    move-object/from16 v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    .line 882
    .end local v10    # "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    :cond_5
    goto :goto_3

    .line 885
    :cond_6
    if-eqz v15, :cond_7

    .line 886
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    aget-wide v7, v1, v9

    aget-wide v17, v1, v16

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v13

    move-wide/from16 v5, p3

    move v12, v9

    move-wide/from16 v9, v17

    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;FJDD)Z

    move-result v1

    or-int/2addr v1, v14

    move v14, v1

    .end local v14    # "timeAnimation":Z
    .restart local v1    # "timeAnimation":Z
    goto :goto_4

    .line 885
    .end local v1    # "timeAnimation":Z
    .restart local v14    # "timeAnimation":Z
    :cond_7
    move v12, v9

    .line 890
    :goto_4
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 891
    aget-object v2, v2, v1

    .line 892
    .local v2, "spline":Landroidx/constraintlayout/motion/utils/CurveFit;
    float-to-double v3, v13

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 893
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 890
    .end local v2    # "spline":Landroidx/constraintlayout/motion/utils/CurveFit;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 896
    .end local v1    # "i":I
    :cond_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v1, :cond_b

    .line 897
    const/4 v1, 0x0

    cmpg-float v1, v13, v1

    if-gtz v1, :cond_9

    .line 898
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 899
    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v13, v1

    if-ltz v1, :cond_a

    .line 900
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 901
    :cond_a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v1, v2, :cond_b

    .line 902
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :cond_b
    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v1, :cond_10

    .line 907
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 908
    aget-object v2, v2, v1

    invoke-virtual {v2, v13, v11}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1    # "i":I
    :cond_c
    goto/16 :goto_8

    .line 914
    :cond_d
    move v12, v9

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v13

    add-float/2addr v1, v2

    .line 915
    .local v1, "float_l":F
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v13

    add-float/2addr v2, v3

    .line 916
    .local v2, "float_t":F
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v13

    add-float/2addr v3, v4

    .line 917
    .local v3, "float_width":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v13

    add-float/2addr v4, v5

    .line 918
    .local v4, "float_height":F
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, v1, v5

    float-to-int v6, v6

    .line 919
    .local v6, "l":I
    add-float v7, v2, v5

    float-to-int v7, v7

    .line 920
    .local v7, "t":I
    add-float v8, v1, v5

    add-float/2addr v8, v3

    float-to-int v8, v8

    .line 921
    .local v8, "r":I
    add-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 922
    .local v5, "b":I
    sub-int v9, v8, v6

    .line 923
    .local v9, "width":I
    sub-int v10, v5, v7

    .line 933
    .local v10, "height":I
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    move/from16 v18, v1

    .end local v1    # "float_l":F
    .local v18, "float_l":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    cmpl-float v1, v12, v1

    if-nez v1, :cond_e

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_f

    .line 935
    :cond_e
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 936
    .local v12, "widthMeasureSpec":I
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 937
    .local v1, "heightMeasureSpec":I
    invoke-virtual {v11, v12, v1}, Landroid/view/View;->measure(II)V

    .line 939
    .end local v1    # "heightMeasureSpec":I
    .end local v12    # "widthMeasureSpec":I
    :cond_f
    invoke-virtual {v11, v6, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 942
    .end local v2    # "float_t":F
    .end local v3    # "float_width":F
    .end local v4    # "float_height":F
    .end local v5    # "b":I
    .end local v6    # "l":I
    .end local v7    # "t":I
    .end local v8    # "r":I
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v18    # "float_l":F
    :cond_10
    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_12

    .line 943
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 944
    .local v9, "osc":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    instance-of v1, v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    if-eqz v1, :cond_11

    .line 945
    move-object v1, v9

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v10, 0x0

    aget-wide v4, v2, v10

    aget-wide v6, v2, v16

    move-object/from16 v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_a

    .line 948
    :cond_11
    const/4 v10, 0x0

    invoke-virtual {v9, v11, v13}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setProperty(Landroid/view/View;F)V

    .line 950
    .end local v9    # "osc":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_a
    goto :goto_9

    .line 952
    :cond_12
    return v14
.end method

.method name()Ljava/lang/String;
    .locals 3

    .line 1094
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1095
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 1099
    move-object v0, p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1100
    .local v1, "start":Landroid/graphics/RectF;
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1101
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 1102
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 1103
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 1104
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object v10, v2

    .line 1105
    .local v10, "end":Landroid/graphics/RectF;
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v2, v10, Landroid/graphics/RectF;->left:F

    .line 1106
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v2, v10, Landroid/graphics/RectF;->top:F

    .line 1107
    iget v2, v10, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v2, v3

    iput v2, v10, Landroid/graphics/RectF;->right:F

    .line 1108
    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v2, v3

    iput v2, v10, Landroid/graphics/RectF;->bottom:F

    .line 1109
    move-object v2, p2

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 1110
    return-void
.end method

.method public setDrawPath(I)V
    .locals 1
    .param p1, "debugMode"    # I

    .line 1090
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 1091
    return-void
.end method

.method setEndState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 5
    .param p1, "cw"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "constraintSet"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 771
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 772
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 773
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 774
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 775
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 777
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    .line 779
    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0
    .param p1, "arc"    # I

    .line 382
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 383
    return-void
.end method

.method setStartCurrentState(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 753
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 754
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 755
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 756
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 757
    return-void
.end method

.method setStartState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 5
    .param p1, "cw"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "constraintSet"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 760
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 761
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 762
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 763
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 764
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 765
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 766
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 767
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v1, p1, p2, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    .line 768
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 744
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 745
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 746
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 747
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 748
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    .line 750
    :cond_0
    return-void
.end method

.method public setup(IIFJ)V
    .locals 29
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "transitionDuration"    # F
    .param p4, "currentTime"    # J

    .line 389
    move-object/from16 v0, p0

    const-class v1, D

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 390
    .local v2, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v3, "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 392
    .local v4, "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 393
    .local v5, "cycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v6, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 405
    .local v7, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    sget v9, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v8, v9, :cond_0

    .line 406
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iput v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 409
    :cond_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v8, v9, v4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 415
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    .line 416
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/Key;

    .line 417
    .local v9, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v10, v9, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v10, :cond_2

    .line 418
    move-object v10, v9

    check-cast v10, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 419
    .local v10, "keyPath":Landroidx/constraintlayout/motion/widget/KeyPosition;
    new-instance v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object v11, v15

    move/from16 v12, p1

    move-object/from16 v16, v13

    move/from16 v13, p2

    move-object/from16 v17, v14

    move-object v14, v10

    move-object/from16 v18, v2

    move-object v2, v15

    .end local v2    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v18, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    invoke-direct {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 420
    iget v2, v10, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    sget v11, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v11, :cond_1

    .line 421
    iget v2, v10, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 423
    .end local v10    # "keyPath":Landroidx/constraintlayout/motion/widget/KeyPosition;
    :cond_1
    goto :goto_1

    .end local v18    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v18, v2

    .end local v2    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    instance-of v2, v9, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v2, :cond_3

    .line 424
    invoke-virtual {v9, v5}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_1

    .line 425
    :cond_3
    instance-of v2, v9, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v2, :cond_4

    .line 426
    invoke-virtual {v9, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_1

    .line 427
    :cond_4
    instance-of v2, v9, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v2, :cond_6

    .line 428
    if-nez v7, :cond_5

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 431
    :cond_5
    move-object v2, v9

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 433
    :cond_6
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    .line 434
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 436
    .end local v9    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :goto_1
    move-object/from16 v2, v18

    goto :goto_0

    .line 416
    .end local v18    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v18, v2

    .end local v2    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_2

    .line 415
    .end local v18    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v18, v2

    .line 441
    .end local v2    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    const/4 v2, 0x0

    if-eqz v7, :cond_9

    .line 442
    new-array v8, v2, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 470
    :cond_9
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    const-string v9, ","

    const-string v10, "CUSTOM,"

    const/4 v11, 0x1

    if-nez v8, :cond_13

    .line 471
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 472
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 474
    .local v12, "attribute":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 475
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 476
    .local v13, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-virtual {v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v11

    .line 477
    .local v14, "customAttributeName":Ljava/lang/String;
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Landroidx/constraintlayout/motion/widget/Key;

    .line 478
    .local v11, "key":Landroidx/constraintlayout/motion/widget/Key;
    iget-object v2, v11, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v2, :cond_a

    .line 479
    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_4

    .line 481
    :cond_a
    iget-object v2, v11, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 482
    .local v2, "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v2, :cond_b

    .line 483
    move-object/from16 v19, v7

    .end local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .local v19, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    iget v7, v11, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v13, v7, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_5

    .line 482
    .end local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_b
    move-object/from16 v19, v7

    .line 485
    .end local v2    # "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    .end local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .end local v11    # "key":Landroidx/constraintlayout/motion/widget/Key;
    .restart local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :goto_5
    move-object/from16 v7, v19

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_4

    .line 486
    .end local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_c
    move-object/from16 v19, v7

    .end local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    invoke-static {v12, v13}, Landroidx/constraintlayout/motion/widget/SplineSet;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/SplineSet;

    move-result-object v2

    .line 487
    .end local v13    # "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    .end local v14    # "customAttributeName":Ljava/lang/String;
    .local v2, "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    goto :goto_6

    .line 488
    .end local v2    # "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    .end local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_d
    move-object/from16 v19, v7

    .end local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    invoke-static {v12}, Landroidx/constraintlayout/motion/widget/SplineSet;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/SplineSet;

    move-result-object v2

    .line 490
    .restart local v2    # "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_6
    if-nez v2, :cond_e

    .line 491
    move-object/from16 v7, v19

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_3

    .line 493
    :cond_e
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/motion/widget/SplineSet;->setType(Ljava/lang/String;)V

    .line 494
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .end local v2    # "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    .end local v12    # "attribute":Ljava/lang/String;
    move-object/from16 v7, v19

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_3

    .line 496
    .end local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_f
    move-object/from16 v19, v7

    .end local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 497
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 498
    .local v7, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v8, :cond_10

    .line 499
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    .line 501
    .end local v7    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_10
    goto :goto_7

    .line 503
    :cond_11
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 504
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v8, 0x64

    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 506
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 507
    .local v7, "spline":Ljava/lang/String;
    const/4 v8, 0x0

    .line 508
    .local v8, "curve":I
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 509
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 511
    :cond_12
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/SplineSet;

    invoke-virtual {v11, v8}, Landroidx/constraintlayout/motion/widget/SplineSet;->setup(I)V

    .line 512
    .end local v7    # "spline":Ljava/lang/String;
    .end local v8    # "curve":I
    goto :goto_8

    .line 470
    .end local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .local v7, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_13
    move-object/from16 v19, v7

    .line 516
    .end local v7    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v19    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_14
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 517
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v2, :cond_15

    .line 518
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 520
    :cond_15
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 521
    .local v7, "attribute":Ljava/lang/String;
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 522
    goto :goto_9

    .line 525
    :cond_16
    const/4 v8, 0x0

    .line 526
    .local v8, "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 527
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 528
    .local v11, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    .line 529
    .local v12, "customAttributeName":Ljava/lang/String;
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/motion/widget/Key;

    .line 530
    .local v14, "key":Landroidx/constraintlayout/motion/widget/Key;
    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v15, :cond_17

    .line 531
    goto :goto_a

    .line 533
    :cond_17
    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 534
    .local v15, "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v15, :cond_18

    .line 535
    move-object/from16 v20, v2

    iget v2, v14, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v11, v2, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_b

    .line 534
    :cond_18
    move-object/from16 v20, v2

    .line 537
    .end local v14    # "key":Landroidx/constraintlayout/motion/widget/Key;
    .end local v15    # "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :goto_b
    move-object/from16 v2, v20

    goto :goto_a

    .line 538
    :cond_19
    move-object/from16 v20, v2

    invoke-static {v7, v11}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    move-result-object v2

    .line 539
    .end local v8    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .end local v11    # "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    .end local v12    # "customAttributeName":Ljava/lang/String;
    .local v2, "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    move-wide/from16 v11, p4

    goto :goto_c

    .line 540
    .end local v2    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .restart local v8    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :cond_1a
    move-object/from16 v20, v2

    move-wide/from16 v11, p4

    invoke-static {v7, v11, v12}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    move-result-object v2

    .line 543
    .end local v8    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .restart local v2    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :goto_c
    if-nez v2, :cond_1b

    .line 544
    move-object/from16 v2, v20

    goto :goto_9

    .line 546
    :cond_1b
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setType(Ljava/lang/String;)V

    .line 547
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .end local v2    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .end local v7    # "attribute":Ljava/lang/String;
    move-object/from16 v2, v20

    goto :goto_9

    .line 550
    :cond_1c
    move-wide/from16 v11, p4

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 551
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 552
    .local v7, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v8, :cond_1d

    .line 553
    move-object v8, v7

    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    .line 555
    .end local v7    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_1d
    goto :goto_d

    .line 558
    :cond_1e
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 559
    .local v7, "spline":Ljava/lang/String;
    const/4 v8, 0x0

    .line 560
    .local v8, "curve":I
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 561
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 563
    :cond_1f
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setup(I)V

    .line 564
    .end local v7    # "spline":Ljava/lang/String;
    .end local v8    # "curve":I
    goto :goto_e

    .line 516
    :cond_20
    move-wide/from16 v11, p4

    .line 569
    :cond_21
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x2

    add-int/2addr v2, v7

    new-array v2, v2, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 570
    .local v2, "points":[Landroidx/constraintlayout/motion/widget/MotionPaths;
    const/4 v8, 0x1

    .line 571
    .local v8, "count":I
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v13, 0x0

    aput-object v9, v2, v13

    .line 572
    array-length v9, v2

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v13, v2, v9

    .line 573
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_22

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    const/4 v13, -0x1

    if-ne v9, v13, :cond_22

    .line 574
    const/4 v9, 0x0

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 576
    :cond_22
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 577
    .local v13, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "count":I
    .local v14, "count":I
    aput-object v13, v2, v8

    .line 578
    .end local v13    # "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move v8, v14

    goto :goto_f

    .line 581
    .end local v14    # "count":I
    .restart local v8    # "count":I
    :cond_23
    const/16 v9, 0x12

    .line 582
    .local v9, "variables":I
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 583
    .local v13, "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_25

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 584
    .local v15, "s":Ljava/lang/String;
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 585
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 586
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 588
    .end local v15    # "s":Ljava/lang/String;
    :cond_24
    const/4 v7, 0x2

    goto :goto_10

    .line 590
    :cond_25
    const/4 v7, 0x0

    new-array v10, v7, [Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 594
    array-length v7, v7

    new-array v7, v7, [I

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    .line 595
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_11
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v14, v10

    if-ge v7, v14, :cond_28

    .line 596
    aget-object v10, v10, v7

    .line 597
    .local v10, "attributeName":Ljava/lang/String;
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    const/4 v15, 0x0

    aput v15, v14, v7

    .line 598
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_12
    array-length v15, v2

    if-ge v14, v15, :cond_27

    .line 599
    aget-object v15, v2, v14

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    .line 600
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    aget v21, v15, v7

    move-object/from16 v22, v3

    .end local v3    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v22, "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    aget-object v3, v2, v14

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v3

    add-int v21, v21, v3

    aput v21, v15, v7

    .line 601
    goto :goto_13

    .line 598
    .end local v22    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_26
    move-object/from16 v22, v3

    .end local v3    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    .end local v22    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_27
    move-object/from16 v22, v3

    .line 595
    .end local v3    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "attributeName":Ljava/lang/String;
    .end local v14    # "j":I
    .restart local v22    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_13
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v22

    goto :goto_11

    .end local v22    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_28
    move-object/from16 v22, v3

    .line 605
    .end local v3    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .restart local v22    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    aget-object v7, v2, v3

    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v7, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v3, v7, :cond_29

    const/4 v3, 0x1

    goto :goto_14

    :cond_29
    const/4 v3, 0x0

    .line 606
    .local v3, "arcMode":Z
    :goto_14
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v7, v7

    add-int/2addr v7, v9

    new-array v7, v7, [Z

    .line 607
    .local v7, "mask":[Z
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_15
    array-length v14, v2

    if-ge v10, v14, :cond_2a

    .line 608
    aget-object v14, v2, v10

    add-int/lit8 v15, v10, -0x1

    aget-object v15, v2, v15

    move-object/from16 v21, v4

    .end local v4    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v21, "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    invoke-virtual {v14, v15, v7, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    .line 607
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v21

    goto :goto_15

    .end local v21    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2a
    move-object/from16 v21, v4

    .line 611
    .end local v4    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "i":I
    .restart local v21    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 612
    .end local v8    # "count":I
    .local v4, "count":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_16
    array-length v10, v7

    if-ge v8, v10, :cond_2c

    .line 613
    aget-boolean v10, v7, v8

    if-eqz v10, :cond_2b

    .line 614
    add-int/lit8 v4, v4, 0x1

    .line 612
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 618
    .end local v8    # "i":I
    :cond_2c
    new-array v8, v4, [I

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 619
    array-length v10, v8

    new-array v10, v10, [D

    iput-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 620
    array-length v8, v8

    new-array v8, v8, [D

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 622
    const/4 v4, 0x0

    .line 623
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_17
    array-length v10, v7

    if-ge v8, v10, :cond_2e

    .line 624
    aget-boolean v10, v7, v8

    if-eqz v10, :cond_2d

    .line 625
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    add-int/lit8 v14, v4, 0x1

    .end local v4    # "count":I
    .local v14, "count":I
    aput v8, v10, v4

    move v4, v14

    .line 623
    .end local v14    # "count":I
    .restart local v4    # "count":I
    :cond_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 628
    .end local v8    # "i":I
    :cond_2e
    array-length v8, v2

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v10, v10

    const/4 v14, 0x2

    new-array v15, v14, [I

    const/4 v14, 0x1

    aput v10, v15, v14

    const/4 v10, 0x0

    aput v8, v15, v10

    invoke-static {v1, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 629
    .local v8, "splineData":[[D
    array-length v10, v2

    new-array v10, v10, [D

    .line 631
    .local v10, "timePoint":[D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_18
    array-length v15, v2

    if-ge v14, v15, :cond_2f

    .line 632
    aget-object v15, v2, v14

    move/from16 v23, v3

    .end local v3    # "arcMode":Z
    .local v23, "arcMode":Z
    aget-object v3, v8, v14

    move/from16 v24, v4

    .end local v4    # "count":I
    .local v24, "count":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    invoke-virtual {v15, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    .line 633
    aget-object v3, v2, v14

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v3, v3

    aput-wide v3, v10, v14

    .line 631
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v23

    move/from16 v4, v24

    goto :goto_18

    .end local v23    # "arcMode":Z
    .end local v24    # "count":I
    .restart local v3    # "arcMode":Z
    .restart local v4    # "count":I
    :cond_2f
    move/from16 v23, v3

    move/from16 v24, v4

    .line 636
    .end local v3    # "arcMode":Z
    .end local v4    # "count":I
    .end local v14    # "i":I
    .restart local v23    # "arcMode":Z
    .restart local v24    # "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_19
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v14, v4

    if-ge v3, v14, :cond_32

    .line 637
    aget v4, v4, v3

    .line 638
    .local v4, "interpolateVariable":I
    sget-object v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    array-length v14, v14

    if-ge v4, v14, :cond_31

    .line 639
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    move/from16 v25, v4

    .end local v4    # "interpolateVariable":I
    .local v25, "interpolateVariable":I
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v4, v4, v3

    aget-object v4, v15, v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " ["

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    .local v4, "s":Ljava/lang/String;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1a
    array-length v15, v2

    if-ge v14, v15, :cond_30

    .line 641
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v26, v8, v14

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    .end local v6    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "mask":[Z
    .local v27, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v28, "mask":[Z
    aget-wide v6, v26, v3

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    goto :goto_1a

    .end local v27    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "mask":[Z
    .restart local v6    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "mask":[Z
    :cond_30
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    .end local v6    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "mask":[Z
    .restart local v27    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mask":[Z
    goto :goto_1b

    .line 638
    .end local v14    # "i":I
    .end local v25    # "interpolateVariable":I
    .end local v27    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "mask":[Z
    .local v4, "interpolateVariable":I
    .restart local v6    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "mask":[Z
    :cond_31
    move/from16 v25, v4

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    .line 636
    .end local v4    # "interpolateVariable":I
    .end local v6    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "mask":[Z
    .restart local v27    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mask":[Z
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    goto :goto_19

    .end local v27    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "mask":[Z
    .restart local v6    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "mask":[Z
    :cond_32
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    .line 645
    .end local v3    # "j":I
    .end local v6    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "mask":[Z
    .restart local v27    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mask":[Z
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Landroidx/constraintlayout/motion/utils/CurveFit;

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 647
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v6, v4

    if-ge v3, v6, :cond_36

    .line 648
    const/4 v6, 0x0

    .line 649
    .local v6, "pointCount":I
    const/4 v7, 0x0

    check-cast v7, [[D

    .line 650
    .local v7, "splinePoints":[[D
    const/4 v14, 0x0

    .line 651
    .local v14, "timePoints":[D
    aget-object v4, v4, v3

    .line 653
    .local v4, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1d
    move/from16 v25, v9

    .end local v9    # "variables":I
    .local v25, "variables":I
    array-length v9, v2

    if-ge v15, v9, :cond_35

    .line 654
    aget-object v9, v2, v15

    invoke-virtual {v9, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 655
    if-nez v7, :cond_33

    .line 656
    array-length v9, v2

    new-array v14, v9, [D

    .line 657
    array-length v9, v2

    aget-object v11, v2, v15

    invoke-virtual {v11, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v26, v13

    const/4 v12, 0x2

    .end local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v26, "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-array v13, v12, [I

    const/4 v12, 0x1

    aput v11, v13, v12

    const/4 v11, 0x0

    aput v9, v13, v11

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, [[D

    goto :goto_1e

    .line 655
    .end local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_33
    move-object/from16 v26, v13

    .line 659
    .end local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1e
    aget-object v9, v2, v15

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v11, v9

    aput-wide v11, v14, v6

    .line 660
    aget-object v9, v2, v15

    aget-object v11, v7, v6

    const/4 v12, 0x0

    invoke-virtual {v9, v4, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    .line 661
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 654
    .end local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_34
    move-object/from16 v26, v13

    .line 653
    .end local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1f
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v11, p4

    move/from16 v9, v25

    move-object/from16 v13, v26

    goto :goto_1d

    .end local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_35
    move-object/from16 v26, v13

    .line 664
    .end local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "j":I
    .restart local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v14, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v9

    .line 665
    .end local v14    # "timePoints":[D
    .local v9, "timePoints":[D
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, [[D

    .line 666
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    add-int/lit8 v12, v3, 0x1

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v13, v9, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v13

    aput-object v13, v11, v12

    .line 647
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "pointCount":I
    .end local v7    # "splinePoints":[[D
    .end local v9    # "timePoints":[D
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v11, p4

    move/from16 v9, v25

    move-object/from16 v13, v26

    goto :goto_1c

    .end local v25    # "variables":I
    .end local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v9, "variables":I
    .restart local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_36
    move/from16 v25, v9

    move-object/from16 v26, v13

    .line 669
    .end local v3    # "i":I
    .end local v9    # "variables":I
    .end local v13    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "variables":I
    .restart local v26    # "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v4, v10, v8}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 671
    aget-object v3, v2, v6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v3, v4, :cond_38

    .line 672
    array-length v3, v2

    .line 673
    .local v3, "size":I
    new-array v4, v3, [I

    .line 674
    .local v4, "mode":[I
    new-array v6, v3, [D

    .line 675
    .local v6, "time":[D
    const/4 v7, 0x2

    new-array v9, v7, [I

    const/4 v11, 0x1

    aput v7, v9, v11

    const/4 v7, 0x0

    aput v3, v9, v7

    invoke-static {v1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 676
    .local v1, "values":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_20
    if-ge v7, v3, :cond_37

    .line 677
    aget-object v9, v2, v7

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v9, v4, v7

    .line 678
    aget-object v9, v2, v7

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v11, v9

    aput-wide v11, v6, v7

    .line 679
    aget-object v9, v1, v7

    aget-object v11, v2, v7

    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    float-to-double v11, v11

    const/4 v13, 0x0

    aput-wide v11, v9, v13

    .line 680
    aget-object v9, v1, v7

    aget-object v11, v2, v7

    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    float-to-double v11, v11

    const/4 v14, 0x1

    aput-wide v11, v9, v14

    .line 676
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 683
    .end local v7    # "i":I
    :cond_37
    invoke-static {v4, v6, v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v7

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 687
    .end local v1    # "values":[[D
    .end local v3    # "size":I
    .end local v4    # "mode":[I
    .end local v6    # "time":[D
    :cond_38
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 688
    .local v1, "distance":F
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 689
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3e

    .line 690
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 691
    .local v4, "attribute":Ljava/lang/String;
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    move-result-object v6

    .line 692
    .local v6, "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    if-nez v6, :cond_39

    .line 693
    goto :goto_21

    .line 696
    :cond_39
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->variesByPath()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 697
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 698
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    move-result v1

    .line 701
    :cond_3a
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 702
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .end local v4    # "attribute":Ljava/lang/String;
    .end local v6    # "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    goto :goto_21

    .line 704
    :cond_3b
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    .line 705
    .local v4, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v6, v4, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v6, :cond_3c

    .line 706
    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    .line 708
    .end local v4    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_3c
    goto :goto_22

    .line 709
    :cond_3d
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 710
    .local v4, "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup(F)V

    .line 711
    .end local v4    # "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    goto :goto_23

    .line 727
    :cond_3e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
