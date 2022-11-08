.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x3

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

.field mLastMeasuredHeight:I

.field mLastMeasuredWidth:I

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 61
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 63
    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 284
    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 285
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 72
    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 2
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p4, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p5, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 61
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 63
    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 284
    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 285
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 127
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 128
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 129
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 139
    return-void

    .line 131
    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 132
    return-void

    .line 134
    :pswitch_1
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 135
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private diff(FF)Z
    .locals 4
    .param p1, "a"    # F
    .param p2, "b"    # F

    .line 240
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x358637bd    # 1.0E-6f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 241
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method private static final xRotate(FFFFFF)F
    .locals 2
    .param p0, "sin"    # F
    .param p1, "cos"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 228
    sub-float/2addr p4, p2

    .line 229
    sub-float/2addr p5, p3

    .line 230
    mul-float v0, p4, p1

    mul-float v1, p5, p0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method private static final yRotate(FFFFFF)F
    .locals 2
    .param p0, "sin"    # F
    .param p1, "cos"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 234
    sub-float/2addr p4, p2

    .line 235
    sub-float/2addr p5, p3

    .line 236
    mul-float v0, p4, p0

    mul-float v1, p5, p1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 7
    .param p1, "c"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 661
    move-object v0, p0

    .line 662
    .local v0, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 663
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 664
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 665
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 666
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 667
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 668
    .local v1, "at":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 669
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 670
    .local v4, "attr":Landroidx/constraintlayout/widget/ConstraintAttribute;
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v5, v6, :cond_0

    .line 671
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "attr":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :cond_0
    goto :goto_0

    .line 674
    :cond_1
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .locals 2
    .param p1, "o"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 657
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    return p1
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 5
    .param p1, "points"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p2, "mask"    # [Z
    .param p3, "custom"    # [Ljava/lang/String;
    .param p4, "arcMode"    # Z

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "c":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .local v1, "c":I
    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    .line 249
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aget-boolean v2, p2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v3, p4

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    .line 250
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v3, p4

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    .line 251
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aget-boolean v2, p2, v1

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v1

    .line 252
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aget-boolean v2, p2, v0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p2, v0

    .line 254
    return-void
.end method

.method fillStandard([D[I)V
    .locals 6
    .param p1, "data"    # [D
    .param p2, "toUse"    # [I

    .line 613
    const/4 v0, 0x6

    new-array v0, v0, [F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 614
    .local v0, "set":[F
    const/4 v1, 0x0

    .line 615
    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 616
    aget v3, p2, v2

    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 617
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "c":I
    .local v3, "c":I
    aget v4, p2, v2

    aget v4, v0, v4

    float-to-double v4, v4

    aput-wide v4, p1, v1

    move v1, v3

    .line 615
    .end local v3    # "c":I
    .restart local v1    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method getCenter([I[D[FI)V
    .locals 9
    .param p1, "toUse"    # [I
    .param p2, "data"    # [D
    .param p3, "point"    # [F
    .param p4, "offset"    # I

    .line 257
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 258
    .local v0, "v_x":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 259
    .local v1, "v_y":F
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 260
    .local v2, "v_width":F
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 261
    .local v3, "v_height":F
    const/4 v4, 0x0

    .local v4, "translationX":F
    const/4 v5, 0x0

    .line 262
    .local v5, "translationY":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    .line 263
    aget-wide v7, p2, v6

    double-to-float v7, v7

    .line 265
    .local v7, "value":F
    aget v8, p1, v6

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 276
    :pswitch_0
    move v3, v7

    goto :goto_1

    .line 273
    :pswitch_1
    move v2, v7

    .line 274
    goto :goto_1

    .line 270
    :pswitch_2
    move v1, v7

    .line 271
    goto :goto_1

    .line 267
    :pswitch_3
    move v0, v7

    .line 268
    nop

    .line 262
    .end local v7    # "value":F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 280
    .end local v6    # "i":I
    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v2, v6

    add-float/2addr v7, v0

    add-float/2addr v7, v4

    aput v7, p3, p4

    .line 281
    add-int/lit8 v7, p4, 0x1

    div-float v6, v3, v6

    add-float/2addr v6, v1

    add-float/2addr v6, v5

    aput v6, p3, v7

    .line 282
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D
    .param p3, "offset"    # I

    .line 631
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 632
    .local v0, "a":Landroidx/constraintlayout/widget/ConstraintAttribute;
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 633
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    float-to-double v3, v1

    aput-wide v3, p2, p3

    .line 634
    return v2

    .line 636
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    .line 637
    .local v1, "N":I
    new-array v2, v1, [F

    .line 638
    .local v2, "f":[F
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 639
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 640
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "offset":I
    .local v4, "offset":I
    aget v5, v2, v3

    float-to-double v5, v5

    aput-wide v5, p2, p3

    .line 639
    add-int/lit8 v3, v3, 0x1

    move p3, v4

    goto :goto_0

    .line 642
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .restart local p3    # "offset":I
    :cond_1
    return v1
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 627
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    return v0
.end method

.method getRect([I[D[FI)V
    .locals 40
    .param p1, "toUse"    # [I
    .param p2, "data"    # [D
    .param p3, "path"    # [F
    .param p4, "offset"    # I

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 412
    .local v2, "v_x":F
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 413
    .local v3, "v_y":F
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 414
    .local v4, "v_width":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 415
    .local v5, "v_height":F
    const/4 v6, 0x0

    .line 416
    .local v6, "delta_path":F
    const/4 v7, 0x0

    .line 417
    .local v7, "rotation":F
    const/4 v8, 0x0

    .line 418
    .local v8, "alpha":F
    const/4 v9, 0x0

    .line 419
    .local v9, "rotationX":F
    const/4 v10, 0x0

    .line 420
    .local v10, "rotationY":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 421
    .local v11, "scaleX":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 422
    .local v12, "scaleY":F
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 423
    .local v13, "pivotX":F
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 424
    .local v14, "pivotY":F
    const/4 v15, 0x0

    .line 425
    .local v15, "translationX":F
    const/16 v16, 0x0

    .line 429
    .local v16, "translationY":F
    const/16 v17, 0x0

    move/from16 v0, v17

    .local v0, "i":I
    :goto_0
    move/from16 v17, v6

    .end local v6    # "delta_path":F
    .local v17, "delta_path":F
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 430
    move v6, v8

    move/from16 v18, v9

    .end local v8    # "alpha":F
    .end local v9    # "rotationX":F
    .local v6, "alpha":F
    .local v18, "rotationX":F
    aget-wide v8, p2, v0

    double-to-float v8, v8

    .line 432
    .local v8, "value":F
    aget v9, v1, v0

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    .line 446
    :pswitch_0
    move v5, v8

    goto :goto_1

    .line 443
    :pswitch_1
    move v4, v8

    .line 444
    goto :goto_1

    .line 440
    :pswitch_2
    move v3, v8

    .line 441
    goto :goto_1

    .line 437
    :pswitch_3
    move v2, v8

    .line 438
    goto :goto_1

    .line 434
    :pswitch_4
    move v9, v8

    .line 435
    .end local v17    # "delta_path":F
    .local v9, "delta_path":F
    move/from16 v17, v9

    .line 429
    .end local v8    # "value":F
    .end local v9    # "delta_path":F
    .restart local v17    # "delta_path":F
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v8, v6

    move/from16 v6, v17

    move/from16 v9, v18

    goto :goto_0

    .end local v6    # "alpha":F
    .end local v18    # "rotationX":F
    .local v8, "alpha":F
    .local v9, "rotationX":F
    :cond_0
    move v6, v8

    move/from16 v18, v9

    .line 450
    .end local v0    # "i":I
    .end local v8    # "alpha":F
    .end local v9    # "rotationX":F
    .restart local v6    # "alpha":F
    .restart local v18    # "rotationX":F
    move v0, v2

    .line 451
    .local v0, "x1":F
    move v8, v3

    .line 453
    .local v8, "y1":F
    add-float v9, v2, v4

    .line 454
    .local v9, "x2":F
    move/from16 v19, v8

    .line 456
    .local v19, "y2":F
    move/from16 v20, v9

    .line 457
    .local v20, "x3":F
    add-float v21, v3, v5

    .line 459
    .local v21, "y3":F
    move/from16 v22, v0

    .line 460
    .local v22, "x4":F
    move/from16 v23, v21

    .line 462
    .local v23, "y4":F
    const/high16 v24, 0x40000000    # 2.0f

    div-float v25, v4, v24

    add-float v25, v0, v25

    .line 463
    .local v25, "cx":F
    div-float v26, v5, v24

    add-float v26, v8, v26

    .line 465
    .local v26, "cy":F
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v27

    if-nez v27, :cond_1

    .line 466
    sub-float v27, v9, v0

    mul-float v27, v27, v13

    add-float v25, v0, v27

    .line 468
    :cond_1
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v27

    if-nez v27, :cond_2

    .line 470
    sub-float v27, v21, v8

    mul-float v27, v27, v14

    add-float v26, v8, v27

    .line 472
    :cond_2
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v28, v11, v27

    if-eqz v28, :cond_3

    .line 473
    add-float v28, v0, v9

    div-float v28, v28, v24

    .line 474
    .local v28, "midx":F
    sub-float v29, v0, v28

    mul-float v29, v29, v11

    add-float v0, v29, v28

    .line 475
    sub-float v29, v9, v28

    mul-float v29, v29, v11

    add-float v9, v29, v28

    .line 476
    sub-float v29, v20, v28

    mul-float v29, v29, v11

    add-float v20, v29, v28

    .line 477
    sub-float v29, v22, v28

    mul-float v29, v29, v11

    add-float v22, v29, v28

    .line 479
    .end local v28    # "midx":F
    :cond_3
    cmpl-float v27, v12, v27

    if-eqz v27, :cond_4

    .line 480
    add-float v27, v8, v21

    div-float v27, v27, v24

    .line 481
    .local v27, "midy":F
    sub-float v24, v8, v27

    mul-float v24, v24, v12

    add-float v8, v24, v27

    .line 482
    sub-float v24, v19, v27

    mul-float v24, v24, v12

    add-float v19, v24, v27

    .line 483
    sub-float v24, v21, v27

    mul-float v24, v24, v12

    add-float v21, v24, v27

    .line 484
    sub-float v24, v23, v27

    mul-float v24, v24, v12

    add-float v23, v24, v27

    .line 486
    .end local v27    # "midy":F
    :cond_4
    const/16 v24, 0x0

    cmpl-float v24, v7, v24

    if-eqz v24, :cond_5

    .line 487
    move/from16 v24, v2

    .end local v2    # "v_x":F
    .local v24, "v_x":F
    float-to-double v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 488
    .local v1, "sin":F
    move/from16 v33, v3

    .end local v3    # "v_y":F
    .local v33, "v_y":F
    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 489
    .local v2, "cos":F
    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v25

    move/from16 v30, v26

    move/from16 v31, v0

    move/from16 v32, v8

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v3

    .line 490
    .local v3, "tx1":F
    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v34

    .line 491
    .local v34, "ty1":F
    move/from16 v31, v9

    move/from16 v32, v19

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v35

    .line 492
    .local v35, "tx2":F
    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v36

    .line 493
    .local v36, "ty2":F
    move/from16 v31, v20

    move/from16 v32, v21

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v37

    .line 494
    .local v37, "tx3":F
    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v38

    .line 495
    .local v38, "ty3":F
    move/from16 v31, v22

    move/from16 v32, v23

    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v39

    .line 496
    .local v39, "tx4":F
    invoke-static/range {v27 .. v32}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v27

    .line 497
    .local v27, "ty4":F
    move v0, v3

    .line 498
    move/from16 v8, v34

    .line 499
    move/from16 v9, v35

    .line 500
    move/from16 v19, v36

    .line 501
    move/from16 v20, v37

    .line 502
    move/from16 v21, v38

    .line 503
    move/from16 v22, v39

    .line 504
    move/from16 v23, v27

    goto :goto_2

    .line 486
    .end local v1    # "sin":F
    .end local v24    # "v_x":F
    .end local v27    # "ty4":F
    .end local v33    # "v_y":F
    .end local v34    # "ty1":F
    .end local v35    # "tx2":F
    .end local v36    # "ty2":F
    .end local v37    # "tx3":F
    .end local v38    # "ty3":F
    .end local v39    # "tx4":F
    .local v2, "v_x":F
    .local v3, "v_y":F
    :cond_5
    move/from16 v24, v2

    move/from16 v33, v3

    .line 507
    .end local v2    # "v_x":F
    .end local v3    # "v_y":F
    .restart local v24    # "v_x":F
    .restart local v33    # "v_y":F
    :goto_2
    add-float/2addr v0, v15

    .line 508
    add-float v8, v8, v16

    .line 509
    add-float/2addr v9, v15

    .line 510
    add-float v19, v19, v16

    .line 511
    add-float v20, v20, v15

    .line 512
    add-float v21, v21, v16

    .line 513
    add-float v22, v22, v15

    .line 514
    add-float v23, v23, v16

    .line 516
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "offset":I
    .local v1, "offset":I
    aput v0, p3, p4

    .line 517
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aput v8, p3, v1

    .line 518
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aput v9, p3, v2

    .line 519
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aput v19, p3, v1

    .line 520
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aput v20, p3, v2

    .line 521
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aput v21, p3, v1

    .line 522
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    aput v22, p3, v2

    .line 523
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aput v23, p3, v1

    .line 524
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 623
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 22
    .param p1, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p2, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p3, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 82
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 83
    .local v3, "position":F
    move-object/from16 v4, p0

    .line 84
    .local v4, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 86
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    move-object/from16 v6, p0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 87
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 88
    .local v5, "scaleWidth":F
    :goto_0
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 89
    .local v7, "scaleHeight":F
    :goto_1
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v10, v8, v9

    .line 90
    .local v10, "scaleX":F
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v13, v11, v12

    .line 92
    .local v13, "scaleY":F
    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 94
    move v14, v3

    .line 96
    .local v14, "path":F
    iget v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v9, v16

    add-float v17, v15, v17

    .line 97
    .local v17, "startCenterX":F
    move/from16 v18, v3

    .end local v3    # "position":F
    .local v18, "position":F
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v19, v12, v16

    add-float v19, v3, v19

    .line 98
    .local v19, "startCenterY":F
    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v8, v8, v16

    add-float/2addr v6, v8

    .line 99
    .local v6, "endCenterX":F
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v11, v11, v16

    add-float/2addr v8, v11

    .line 100
    .local v8, "endCenterY":F
    sub-float v11, v6, v17

    .line 101
    .local v11, "pathVectorX":F
    sub-float v20, v8, v19

    .line 102
    .local v20, "pathVectorY":F
    mul-float v21, v11, v14

    add-float v15, v15, v21

    mul-float v21, v10, v5

    div-float v21, v21, v16

    sub-float v15, v15, v21

    float-to-int v15, v15

    int-to-float v15, v15

    iput v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 103
    mul-float v15, v20, v14

    add-float/2addr v3, v15

    mul-float v15, v13, v7

    div-float v15, v15, v16

    sub-float/2addr v3, v15

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 104
    mul-float v3, v10, v5

    add-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 105
    mul-float v3, v13, v7

    add-float/2addr v12, v3

    float-to-int v3, v12

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 107
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move/from16 v3, v18

    goto :goto_2

    :cond_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 108
    .local v3, "dxdx":F
    :goto_2
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 109
    .local v9, "dydx":F
    :goto_3
    iget v15, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_4

    move/from16 v15, v18

    goto :goto_4

    :cond_4
    iget v15, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 110
    .local v15, "dydy":F
    :goto_4
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 111
    .local v12, "dxdy":F
    :goto_5
    const/4 v2, 0x2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 112
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v21, v11, v3

    add-float v2, v2, v21

    mul-float v21, v20, v12

    add-float v2, v2, v21

    mul-float v21, v10, v5

    div-float v21, v21, v16

    sub-float v2, v2, v21

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 113
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v21, v11, v9

    add-float v2, v2, v21

    mul-float v21, v20, v15

    add-float v2, v2, v21

    mul-float v21, v13, v7

    div-float v21, v21, v16

    sub-float v2, v2, v21

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 115
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 116
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 117
    return-void
.end method

.method initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 24
    .param p1, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p2, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p3, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 186
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 187
    .local v3, "position":F
    move-object/from16 v4, p0

    .line 188
    .local v4, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 190
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    move-object/from16 v6, p0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 191
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 192
    .local v5, "scaleWidth":F
    :goto_0
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 194
    .local v7, "scaleHeight":F
    :goto_1
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v8, v9

    .line 195
    .local v8, "scaleX":F
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v9, v10

    .line 197
    .local v9, "scaleY":F
    iget v10, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v10, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 199
    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 201
    .local v10, "path":F
    :goto_2
    iget v11, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v12, v13

    add-float/2addr v14, v11

    .line 202
    .local v14, "startCenterX":F
    iget v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    move/from16 v16, v3

    .end local v3    # "position":F
    .local v16, "position":F
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float v17, v3, v13

    add-float v17, v15, v17

    .line 203
    .local v17, "startCenterY":F
    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float/2addr v1, v13

    add-float/2addr v6, v1

    .line 204
    .local v6, "endCenterX":F
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v0, v13

    add-float/2addr v1, v0

    .line 205
    .local v1, "endCenterY":F
    sub-float v0, v6, v14

    .line 206
    .local v0, "pathVectorX":F
    sub-float v13, v1, v17

    .line 207
    .local v13, "pathVectorY":F
    mul-float v19, v0, v10

    add-float v11, v11, v19

    mul-float v19, v8, v5

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v19, v18

    sub-float v11, v11, v19

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 208
    mul-float v11, v13, v10

    add-float/2addr v15, v11

    mul-float v11, v9, v7

    div-float v11, v11, v18

    sub-float/2addr v15, v11

    float-to-int v11, v15

    int-to-float v11, v11

    iput v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 209
    mul-float v11, v8, v5

    add-float/2addr v12, v11

    float-to-int v11, v12

    int-to-float v11, v11

    iput v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 210
    mul-float v11, v9, v7

    add-float/2addr v3, v11

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 211
    move-object/from16 v3, p1

    iget v11, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    iget v11, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 212
    .local v11, "perpendicular":F
    :goto_3
    neg-float v12, v13

    .line 213
    .local v12, "perpendicularX":F
    move v15, v0

    .line 215
    .local v15, "perpendicularY":F
    mul-float v19, v12, v11

    .line 216
    .local v19, "normalX":F
    mul-float v20, v15, v11

    .line 217
    .local v20, "normalY":F
    move/from16 v21, v1

    .end local v1    # "endCenterY":F
    .local v21, "endCenterY":F
    const/4 v1, 0x1

    iput v1, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 218
    move-object/from16 v1, p2

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v22, v0, v10

    add-float v2, v2, v22

    mul-float v22, v8, v5

    const/high16 v18, 0x40000000    # 2.0f

    div-float v22, v22, v18

    sub-float v2, v2, v22

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 219
    move/from16 v22, v0

    .end local v0    # "pathVectorX":F
    .local v22, "pathVectorX":F
    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v23, v13, v10

    add-float v0, v0, v23

    mul-float v23, v9, v7

    div-float v23, v23, v18

    sub-float v0, v0, v23

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 220
    add-float v2, v2, v19

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 221
    add-float v0, v0, v20

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 223
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v0

    iput-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 224
    iget v0, v3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 225
    return-void
.end method

.method initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 22
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p4, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p5, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 144
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 145
    .local v3, "position":F
    move-object/from16 v4, p0

    .line 146
    .local v4, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 148
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    move-object/from16 v6, p0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 149
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 150
    .local v5, "scaleWidth":F
    :goto_0
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 152
    .local v7, "scaleHeight":F
    :goto_1
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v10, v8, v9

    .line 153
    .local v10, "scaleX":F
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v13, v11, v12

    .line 155
    .local v13, "scaleY":F
    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 157
    move v14, v3

    .line 159
    .local v14, "path":F
    iget v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v9, v16

    add-float v17, v15, v17

    .line 160
    .local v17, "startCenterX":F
    move/from16 v18, v3

    .end local v3    # "position":F
    .local v18, "position":F
    iget v3, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v19, v12, v16

    add-float v19, v3, v19

    .line 161
    .local v19, "startCenterY":F
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v8, v8, v16

    add-float/2addr v1, v8

    .line 162
    .local v1, "endCenterX":F
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v11, v11, v16

    add-float/2addr v8, v11

    .line 163
    .local v8, "endCenterY":F
    sub-float v11, v1, v17

    .line 164
    .local v11, "pathVectorX":F
    sub-float v20, v8, v19

    .line 165
    .local v20, "pathVectorY":F
    mul-float v21, v11, v14

    add-float v15, v15, v21

    mul-float v21, v10, v5

    div-float v21, v21, v16

    sub-float v15, v15, v21

    float-to-int v15, v15

    int-to-float v15, v15

    iput v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 166
    mul-float v15, v20, v14

    add-float/2addr v3, v15

    mul-float v15, v13, v7

    div-float v15, v15, v16

    sub-float/2addr v3, v15

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 167
    mul-float v3, v10, v5

    add-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 168
    mul-float v3, v13, v7

    add-float/2addr v12, v3

    float-to-int v3, v12

    int-to-float v3, v3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 170
    const/4 v3, 0x3

    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 171
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    move/from16 v3, p1

    int-to-float v9, v3

    iget v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v9, v12

    float-to-int v3, v9

    .line 173
    .end local p1    # "parentWidth":I
    .local v3, "parentWidth":I
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v12, v3

    mul-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    goto :goto_2

    .line 171
    .end local v3    # "parentWidth":I
    .restart local p1    # "parentWidth":I
    :cond_2
    move/from16 v3, p1

    .line 175
    .end local p1    # "parentWidth":I
    .restart local v3    # "parentWidth":I
    :goto_2
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    .line 176
    move/from16 v9, p2

    int-to-float v12, v9

    iget v15, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v12, v15

    float-to-int v9, v12

    .line 177
    .end local p2    # "parentHeight":I
    .local v9, "parentHeight":I
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v15, v9

    mul-float/2addr v12, v15

    float-to-int v12, v12

    int-to-float v12, v12

    iput v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    goto :goto_3

    .line 175
    .end local v9    # "parentHeight":I
    .restart local p2    # "parentHeight":I
    :cond_3
    move/from16 v9, p2

    .line 180
    .end local p2    # "parentHeight":I
    .restart local v9    # "parentHeight":I
    :goto_3
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v12}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v12

    iput-object v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 181
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v12, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 182
    return-void
.end method

.method setBounds(FFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .line 647
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 648
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 649
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 650
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 651
    float-to-int v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 652
    float-to-int v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 653
    return-void
.end method

.method setDpDt(FF[F[I[D[D)V
    .locals 21
    .param p1, "locationX"    # F
    .param p2, "locationY"    # F
    .param p3, "mAnchorDpDt"    # [F
    .param p4, "toUse"    # [I
    .param p5, "deltaData"    # [D
    .param p6, "data"    # [D

    .line 538
    move-object/from16 v0, p4

    const/4 v1, 0x0

    .line 539
    .local v1, "d_x":F
    const/4 v2, 0x0

    .line 540
    .local v2, "d_y":F
    const/4 v3, 0x0

    .line 541
    .local v3, "d_width":F
    const/4 v4, 0x0

    .line 543
    .local v4, "d_height":F
    const/4 v5, 0x0

    .line 544
    .local v5, "deltaScaleX":F
    const/4 v6, 0x0

    .line 546
    .local v6, "deltaScaleY":F
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 547
    .local v7, "mPathRotate":F
    const/4 v8, 0x0

    .line 548
    .local v8, "deltaTranslationX":F
    const/4 v9, 0x0

    .line 550
    .local v9, "deltaTranslationY":F
    const-string v10, " dd = "

    .line 551
    .local v10, "mod":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v12, v0

    if-ge v11, v12, :cond_0

    .line 552
    aget-wide v12, p5, v11

    double-to-float v12, v12

    .line 553
    .local v12, "deltaV":F
    aget-wide v13, p6, v11

    double-to-float v13, v13

    .line 557
    .local v13, "value":F
    aget v14, v0, v11

    packed-switch v14, :pswitch_data_0

    goto :goto_1

    .line 570
    :pswitch_0
    move v4, v12

    goto :goto_1

    .line 567
    :pswitch_1
    move v3, v12

    .line 568
    goto :goto_1

    .line 564
    :pswitch_2
    move v2, v12

    .line 565
    goto :goto_1

    .line 561
    :pswitch_3
    move v1, v12

    .line 562
    goto :goto_1

    .line 559
    :pswitch_4
    nop

    .line 551
    .end local v12    # "deltaV":F
    .end local v13    # "value":F
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 580
    .end local v11    # "i":I
    :cond_0
    mul-float v11, v5, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float v11, v1, v11

    .line 581
    .local v11, "deltaX":F
    mul-float v13, v6, v4

    div-float/2addr v13, v12

    sub-float v12, v2, v13

    .line 582
    .local v12, "deltaY":F
    const/high16 v13, 0x3f800000    # 1.0f

    add-float v14, v5, v13

    mul-float/2addr v14, v3

    .line 583
    .local v14, "deltaWidth":F
    add-float v15, v6, v13

    mul-float/2addr v15, v4

    .line 584
    .local v15, "deltaHeight":F
    add-float v16, v11, v14

    .line 585
    .local v16, "deltaRight":F
    add-float v17, v12, v15

    .line 608
    .local v17, "deltaBottom":F
    const/16 v18, 0x0

    sub-float v19, v13, p1

    mul-float v19, v19, v11

    mul-float v20, v16, p1

    add-float v19, v19, v20

    add-float v19, v19, v8

    aput v19, p3, v18

    .line 609
    sub-float v13, v13, p2

    mul-float/2addr v13, v12

    mul-float v18, v17, p2

    add-float v13, v13, v18

    add-float/2addr v13, v9

    const/16 v18, 0x1

    aput v13, p3, v18

    .line 610
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setView(Landroid/view/View;[I[D[D[D)V
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "toUse"    # [I
    .param p3, "data"    # [D
    .param p4, "slope"    # [D
    .param p5, "cycle"    # [D

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 290
    .local v3, "v_x":F
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 291
    .local v4, "v_y":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 292
    .local v5, "v_width":F
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 293
    .local v6, "v_height":F
    const/4 v7, 0x0

    .line 294
    .local v7, "dv_x":F
    const/4 v8, 0x0

    .line 295
    .local v8, "dv_y":F
    const/4 v9, 0x0

    .line 296
    .local v9, "dv_width":F
    const/4 v10, 0x0

    .line 297
    .local v10, "dv_height":F
    const/4 v11, 0x0

    .line 298
    .local v11, "delta_path":F
    const/high16 v12, 0x7fc00000    # Float.NaN

    .line 299
    .local v12, "view_rotate":F
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 305
    .local v13, "path_rotate":F
    array-length v14, v2

    const/4 v15, 0x1

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v14, v14

    move/from16 v16, v3

    .end local v3    # "v_x":F
    .local v16, "v_x":F
    array-length v3, v2

    sub-int/2addr v3, v15

    aget v3, v2, v3

    if-gt v14, v3, :cond_1

    .line 306
    array-length v3, v2

    sub-int/2addr v3, v15

    aget v3, v2, v3

    add-int/2addr v3, v15

    .line 307
    .local v3, "scratch_data_length":I
    new-array v14, v3, [D

    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 308
    new-array v14, v3, [D

    iput-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    goto :goto_0

    .line 305
    .end local v16    # "v_x":F
    .local v3, "v_x":F
    :cond_0
    move/from16 v16, v3

    .line 310
    .end local v3    # "v_x":F
    .restart local v16    # "v_x":F
    :cond_1
    :goto_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    move v14, v4

    move/from16 v17, v5

    .end local v4    # "v_y":F
    .end local v5    # "v_width":F
    .local v14, "v_y":F
    .local v17, "v_width":F
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 311
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 312
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v5, v2, v3

    aget-wide v18, p3, v3

    aput-wide v18, v4, v5

    .line 313
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget v5, v2, v3

    aget-wide v18, p4, v3

    aput-wide v18, v4, v5

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 316
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    move v4, v14

    move/from16 v5, v17

    .end local v14    # "v_y":F
    .end local v17    # "v_width":F
    .restart local v3    # "i":I
    .restart local v4    # "v_y":F
    .restart local v5    # "v_width":F
    :goto_2
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v15, v14

    if-ge v3, v15, :cond_7

    .line 317
    aget-wide v14, v14, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    const-wide/16 v18, 0x0

    if-eqz v14, :cond_3

    if-eqz p5, :cond_6

    aget-wide v14, p5, v3

    cmpl-double v14, v14, v18

    if-nez v14, :cond_3

    .line 318
    goto :goto_4

    .line 320
    :cond_3
    if-eqz p5, :cond_4

    aget-wide v18, p5, v3

    :cond_4
    move-wide/from16 v14, v18

    .line 321
    .local v14, "deltaCycle":D
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v18, v2, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5

    move-wide/from16 v20, v14

    goto :goto_3

    :cond_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v18, v2, v3

    add-double v18, v18, v14

    move-wide/from16 v20, v14

    move-wide/from16 v14, v18

    .end local v14    # "deltaCycle":D
    .local v20, "deltaCycle":D
    :goto_3
    double-to-float v2, v14

    .line 322
    .local v2, "value":F
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v14, v14, v3

    double-to-float v14, v14

    .line 326
    .local v14, "dvalue":F
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 348
    :pswitch_0
    move v13, v2

    goto :goto_4

    .line 344
    :pswitch_1
    move v6, v2

    .line 345
    move v10, v14

    .line 346
    goto :goto_4

    .line 340
    :pswitch_2
    move v5, v2

    .line 341
    move v9, v14

    .line 342
    goto :goto_4

    .line 336
    :pswitch_3
    move v4, v2

    .line 337
    move v8, v14

    .line 338
    goto :goto_4

    .line 331
    :pswitch_4
    move v15, v2

    .line 332
    .end local v16    # "v_x":F
    .local v15, "v_x":F
    move v7, v14

    .line 334
    move/from16 v16, v15

    goto :goto_4

    .line 328
    .end local v15    # "v_x":F
    .restart local v16    # "v_x":F
    :pswitch_5
    move v11, v2

    .line 329
    nop

    .line 316
    .end local v2    # "value":F
    .end local v14    # "dvalue":F
    .end local v20    # "deltaCycle":D
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    const/4 v15, 0x1

    goto :goto_2

    .line 353
    .end local v3    # "i":I
    :cond_7
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 354
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_8

    .line 355
    invoke-virtual {v1, v12}, Landroid/view/View;->setRotation(F)V

    move/from16 v18, v7

    move v15, v8

    move/from16 v20, v9

    move/from16 v19, v10

    move/from16 v22, v11

    move/from16 v21, v12

    goto :goto_6

    .line 354
    :cond_8
    move/from16 v18, v7

    move v15, v8

    move/from16 v20, v9

    move/from16 v19, v10

    move/from16 v22, v11

    move/from16 v21, v12

    goto :goto_6

    .line 358
    :cond_9
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    move v2, v12

    .line 359
    .local v2, "rot":F
    :goto_5
    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v9, v3

    add-float/2addr v14, v7

    .line 360
    .local v14, "dx":F
    div-float v3, v10, v3

    add-float/2addr v3, v8

    .line 367
    .local v3, "dy":F
    move/from16 v18, v7

    move v15, v8

    .end local v7    # "dv_x":F
    .end local v8    # "dv_y":F
    .local v15, "dv_y":F
    .local v18, "dv_x":F
    float-to-double v7, v2

    move/from16 v20, v9

    move/from16 v19, v10

    .end local v9    # "dv_width":F
    .end local v10    # "dv_height":F
    .local v19, "dv_height":F
    .local v20, "dv_width":F
    float-to-double v9, v13

    move/from16 v22, v11

    move/from16 v21, v12

    .end local v11    # "delta_path":F
    .end local v12    # "view_rotate":F
    .local v21, "view_rotate":F
    .local v22, "delta_path":F
    float-to-double v11, v3

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "rot":F
    .end local v3    # "dy":F
    .local v23, "rot":F
    .local v24, "dy":F
    float-to-double v2, v14

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    add-double/2addr v9, v2

    add-double/2addr v7, v9

    double-to-float v2, v7

    .line 368
    .end local v23    # "rot":F
    .restart local v2    # "rot":F
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 375
    .end local v2    # "rot":F
    .end local v14    # "dx":F
    .end local v24    # "dy":F
    :goto_6
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, v16, v2

    float-to-int v3, v3

    .line 376
    .local v3, "l":I
    add-float v7, v4, v2

    float-to-int v7, v7

    .line 377
    .local v7, "t":I
    add-float v8, v16, v2

    add-float/2addr v8, v5

    float-to-int v8, v8

    .line 378
    .local v8, "r":I
    add-float/2addr v2, v4

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 379
    .local v2, "b":I
    sub-int v9, v8, v3

    .line 380
    .local v9, "i_width":I
    sub-int v10, v2, v7

    .line 390
    .local v10, "i_height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    if-ne v9, v11, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    if-eq v10, v11, :cond_b

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v11, 0x1

    .line 391
    .local v11, "remeasure":Z
    :goto_8
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 392
    .local v14, "widthMeasureSpec":I
    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 393
    .local v12, "heightMeasureSpec":I
    move/from16 v17, v4

    .end local v4    # "v_y":F
    .local v17, "v_y":F
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    if-ne v4, v14, :cond_d

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    if-eq v4, v12, :cond_e

    .line 394
    :cond_d
    const/4 v11, 0x1

    .line 396
    :cond_e
    if-eqz v11, :cond_f

    .line 397
    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    .line 398
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    .line 399
    invoke-virtual {v1, v14, v12}, Landroid/view/View;->measure(II)V

    .line 401
    :cond_f
    invoke-virtual {v1, v3, v7, v8, v2}, Landroid/view/View;->layout(IIII)V

    .line 408
    return-void

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
