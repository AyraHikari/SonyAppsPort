.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static final ANCHOR_BASELINE:I = 0x4

.field public static final ANCHOR_BOTTOM:I = 0x3

.field public static final ANCHOR_LEFT:I = 0x0

.field public static final ANCHOR_RIGHT:I = 0x1

.field public static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2


# instance fields
.field private hasBaseline:Z

.field public horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field public mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field mGroupsToSolver:Z

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtuaLayout:Z

.field public mIsHeightWrapContent:Z

.field public mIsWidthWrapContent:Z

.field public mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field public mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mMatchConstraintDefaultHeight:I

.field public mMatchConstraintDefaultWidth:I

.field public mMatchConstraintMaxHeight:I

.field public mMatchConstraintMaxWidth:I

.field public mMatchConstraintMinHeight:I

.field public mMatchConstraintMinWidth:I

.field public mMatchConstraintPercentHeight:F

.field public mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mOptimizerMeasurable:Z

.field public mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field public mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field public run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

.field public verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

.field public verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

.field public wrapMeasure:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 243
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 57
    const/4 v1, 0x2

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 61
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 62
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 64
    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 65
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    .line 66
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 99
    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 100
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 104
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 105
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 106
    new-array v3, v1, [I

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 108
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 109
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 110
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 111
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 112
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 113
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 117
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 118
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 120
    new-array v3, v1, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 121
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 122
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 125
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 192
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 193
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 194
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 195
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 196
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 197
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 198
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 199
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 207
    const/4 v5, 0x6

    new-array v5, v5, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    const/4 v6, 0x5

    aput-object v4, v5, v6

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 213
    new-array v4, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v7

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 216
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 219
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 220
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 221
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 222
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 225
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 226
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 227
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 228
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 231
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 232
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 235
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 244
    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 245
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 253
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 256
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 258
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 259
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 271
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 272
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 275
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 276
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 280
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 282
    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v2, v0

    aput-object v4, v2, v7

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 283
    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v1, v0

    aput-object v4, v1, v7

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 285
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 286
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 357
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 358
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 384
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->measured:Z

    .line 57
    const/4 v1, 0x2

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 61
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    .line 62
    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    .line 64
    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 65
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    .line 66
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 99
    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 100
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 104
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 105
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 106
    new-array v3, v1, [I

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 108
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 109
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 110
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 111
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 112
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 113
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 117
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 118
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 120
    new-array v3, v1, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 121
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 122
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 125
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 192
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 193
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 194
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 195
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 196
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 197
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 198
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 199
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 207
    const/4 v5, 0x6

    new-array v5, v5, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    const/4 v6, 0x5

    aput-object v4, v5, v6

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 213
    new-array v4, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v7

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 216
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 219
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 220
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 221
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 222
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 225
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 226
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 227
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 228
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 231
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 232
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 235
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 244
    sget v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 245
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 253
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 256
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 258
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 259
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 271
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 272
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 275
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 276
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 280
    new-array v2, v1, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 282
    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v2, v0

    aput-object v4, v2, v7

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 283
    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v1, v0

    aput-object v4, v1, v7

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 285
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 286
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 369
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 370
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 371
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 372
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 373
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 374
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private addAnchors()V
    .locals 2

    .line 404
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZIIIIFZ)V
    .locals 34
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "isHorizontal"    # Z
    .param p3, "parentWrapContent"    # Z
    .param p4, "oppositeParentWrapContent"    # Z
    .param p5, "isTerminal"    # Z
    .param p6, "parentMin"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "parentMax"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p8, "dimensionBehaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p9, "wrapContent"    # Z
    .param p10, "beginAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p11, "endAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p12, "beginPosition"    # I
    .param p13, "dimension"    # I
    .param p14, "minDimension"    # I
    .param p15, "maxDimension"    # I
    .param p16, "bias"    # F
    .param p17, "useRatio"    # Z
    .param p18, "inChain"    # Z
    .param p19, "oppositeInChain"    # Z
    .param p20, "matchConstraintDefault"    # I
    .param p21, "oppositeMatchConstraintDefault"    # I
    .param p22, "matchMinDimension"    # I
    .param p23, "matchMaxDimension"    # I
    .param p24, "matchPercentDimension"    # F
    .param p25, "applyPosition"    # Z

    .line 2327
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v9, p15

    move/from16 v8, p21

    move/from16 v1, p22

    move/from16 v2, p23

    invoke-virtual {v10, v13}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 2328
    .local v7, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 2329
    .local v6, "end":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 2330
    .local v5, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 2332
    .local v4, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2333
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v3

    iget-wide v12, v3, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    iput-wide v12, v3, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 2336
    :cond_0
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v12

    .line 2337
    .local v12, "isBeginConnected":Z
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v13

    .line 2338
    .local v13, "isEndConnected":Z
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v16

    .line 2340
    .local v16, "isCenterConnected":Z
    const/4 v3, 0x0

    .line 2342
    .local v3, "variableSize":Z
    const/16 v17, 0x0

    .line 2343
    .local v17, "numConnections":I
    if-eqz v12, :cond_1

    .line 2344
    add-int/lit8 v17, v17, 0x1

    .line 2346
    :cond_1
    if-eqz v13, :cond_2

    .line 2347
    add-int/lit8 v17, v17, 0x1

    .line 2349
    :cond_2
    if-eqz v16, :cond_3

    .line 2350
    add-int/lit8 v17, v17, 0x1

    move/from16 v8, v17

    goto :goto_0

    .line 2349
    :cond_3
    move/from16 v8, v17

    .line 2353
    .end local v17    # "numConnections":I
    .local v8, "numConnections":I
    :goto_0
    if-eqz p17, :cond_4

    .line 2354
    const/16 v17, 0x3

    move/from16 v14, v17

    .end local p20    # "matchConstraintDefault":I
    .local v17, "matchConstraintDefault":I
    goto :goto_1

    .line 2353
    .end local v17    # "matchConstraintDefault":I
    .restart local p20    # "matchConstraintDefault":I
    :cond_4
    move/from16 v14, p20

    .line 2356
    .end local p20    # "matchConstraintDefault":I
    .local v14, "matchConstraintDefault":I
    :goto_1
    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    goto :goto_2

    .line 2370
    :pswitch_0
    const/4 v3, 0x1

    .line 2371
    move/from16 p20, v3

    .end local v3    # "variableSize":Z
    .local p20, "variableSize":Z
    const/4 v3, 0x4

    if-ne v14, v3, :cond_5

    .line 2372
    const/4 v3, 0x0

    .end local p20    # "variableSize":Z
    .restart local v3    # "variableSize":Z
    goto :goto_2

    .line 2371
    .end local v3    # "variableSize":Z
    .restart local p20    # "variableSize":Z
    :cond_5
    move/from16 v3, p20

    goto :goto_2

    .line 2366
    .end local p20    # "variableSize":Z
    .restart local v3    # "variableSize":Z
    :pswitch_1
    const/4 v3, 0x0

    .line 2368
    goto :goto_2

    .line 2362
    :pswitch_2
    const/4 v3, 0x0

    .line 2364
    goto :goto_2

    .line 2358
    :pswitch_3
    const/4 v3, 0x0

    .line 2360
    nop

    .line 2378
    :goto_2
    move/from16 p20, v3

    .end local v3    # "variableSize":Z
    .restart local p20    # "variableSize":Z
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move-object/from16 v17, v4

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v17, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 2379
    const/4 v3, 0x0

    .line 2380
    .end local p13    # "dimension":I
    .local v3, "dimension":I
    const/4 v4, 0x0

    move/from16 v18, v4

    .end local p20    # "variableSize":Z
    .local v4, "variableSize":Z
    goto :goto_3

    .line 2378
    .end local v3    # "dimension":I
    .end local v4    # "variableSize":Z
    .restart local p13    # "dimension":I
    .restart local p20    # "variableSize":Z
    :cond_6
    move/from16 v3, p13

    move/from16 v18, p20

    .line 2384
    .end local p13    # "dimension":I
    .end local p20    # "variableSize":Z
    .restart local v3    # "dimension":I
    .local v18, "variableSize":Z
    :goto_3
    if-eqz p25, :cond_8

    .line 2385
    if-nez v12, :cond_7

    if-nez v13, :cond_7

    if-nez v16, :cond_7

    .line 2386
    move/from16 v4, p12

    invoke-virtual {v10, v7, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto :goto_4

    .line 2385
    :cond_7
    move/from16 v4, p12

    .line 2387
    if-eqz v12, :cond_8

    if-nez v13, :cond_8

    .line 2388
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    const/4 v11, 0x7

    invoke-virtual {v10, v7, v5, v4, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2393
    :cond_8
    :goto_4
    const/4 v11, 0x0

    if-nez v18, :cond_c

    .line 2394
    if-eqz p9, :cond_a

    .line 2395
    const/4 v4, 0x3

    invoke-virtual {v10, v6, v7, v11, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2396
    if-lez v15, :cond_9

    .line 2397
    const/4 v4, 0x7

    invoke-virtual {v10, v6, v7, v15, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_5

    .line 2396
    :cond_9
    const/4 v4, 0x7

    .line 2399
    :goto_5
    const v11, 0x7fffffff

    if-ge v9, v11, :cond_b

    .line 2400
    invoke-virtual {v10, v6, v7, v9, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    .line 2403
    :cond_a
    const/4 v4, 0x7

    invoke-virtual {v10, v6, v7, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2471
    :cond_b
    :goto_6
    move/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v26, v5

    move/from16 v25, v8

    move/from16 v23, v14

    move-object/from16 v8, v17

    move/from16 v22, v18

    const/4 v11, 0x7

    move/from16 v17, p5

    move/from16 v18, v1

    move-object v14, v6

    goto/16 :goto_c

    .line 2406
    :cond_c
    const/4 v4, 0x2

    if-eq v8, v4, :cond_f

    if-nez p17, :cond_f

    const/4 v4, 0x1

    if-eq v14, v4, :cond_d

    if-nez v14, :cond_f

    .line 2410
    :cond_d
    const/16 v18, 0x0

    .line 2411
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2412
    .local v4, "d":I
    if-lez v2, :cond_e

    .line 2413
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2415
    :cond_e
    const/4 v11, 0x7

    invoke-virtual {v10, v6, v7, v4, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2416
    .end local v4    # "d":I
    move/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v26, v5

    move/from16 v25, v8

    move/from16 v23, v14

    move-object/from16 v8, v17

    move/from16 v22, v18

    const/4 v11, 0x7

    move/from16 v17, p5

    move/from16 v18, v1

    move-object v14, v6

    goto/16 :goto_c

    .line 2417
    :cond_f
    const/4 v4, -0x2

    if-ne v1, v4, :cond_10

    .line 2418
    move v1, v3

    move v11, v1

    .end local p22    # "matchMinDimension":I
    .local v1, "matchMinDimension":I
    goto :goto_7

    .line 2417
    .end local v1    # "matchMinDimension":I
    .restart local p22    # "matchMinDimension":I
    :cond_10
    move v11, v1

    .line 2420
    .end local p22    # "matchMinDimension":I
    .local v11, "matchMinDimension":I
    :goto_7
    if-ne v2, v4, :cond_11

    .line 2421
    move v1, v3

    move v4, v1

    .end local p23    # "matchMaxDimension":I
    .local v1, "matchMaxDimension":I
    goto :goto_8

    .line 2420
    .end local v1    # "matchMaxDimension":I
    .restart local p23    # "matchMaxDimension":I
    :cond_11
    move v4, v2

    .line 2423
    .end local p23    # "matchMaxDimension":I
    .local v4, "matchMaxDimension":I
    :goto_8
    if-lez v3, :cond_12

    const/4 v1, 0x1

    if-eq v14, v1, :cond_12

    .line 2425
    const/4 v3, 0x0

    .line 2428
    :cond_12
    if-lez v11, :cond_13

    .line 2429
    const/4 v1, 0x7

    invoke-virtual {v10, v6, v7, v11, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2430
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2432
    :cond_13
    if-lez v4, :cond_16

    .line 2433
    const/4 v1, 0x1

    .line 2434
    .local v1, "applyLimit":Z
    if-eqz p3, :cond_14

    const/4 v2, 0x1

    if-ne v14, v2, :cond_14

    .line 2435
    const/4 v1, 0x0

    .line 2437
    :cond_14
    if-eqz v1, :cond_15

    .line 2438
    const/4 v2, 0x7

    invoke-virtual {v10, v6, v7, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2440
    :cond_15
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 2442
    .end local v1    # "applyLimit":Z
    :cond_16
    const/4 v2, 0x1

    if-ne v14, v2, :cond_19

    .line 2443
    if-eqz p3, :cond_17

    .line 2444
    const/4 v1, 0x7

    invoke-virtual {v10, v6, v7, v3, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_9

    .line 2445
    :cond_17
    const/4 v1, 0x7

    if-eqz p18, :cond_18

    .line 2446
    const/4 v2, 0x5

    invoke-virtual {v10, v6, v7, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2447
    invoke-virtual {v10, v6, v7, v3, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_9

    .line 2449
    :cond_18
    const/4 v2, 0x5

    invoke-virtual {v10, v6, v7, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2450
    invoke-virtual {v10, v6, v7, v3, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2471
    :goto_9
    move/from16 v24, v3

    move/from16 v21, v4

    move-object/from16 v26, v5

    move/from16 v25, v8

    move/from16 v23, v14

    move-object/from16 v8, v17

    move/from16 v22, v18

    move/from16 v17, p5

    move-object v14, v6

    move/from16 v18, v11

    move v11, v1

    goto/16 :goto_c

    .line 2452
    :cond_19
    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne v14, v2, :cond_1c

    .line 2453
    const/4 v2, 0x0

    .line 2454
    .local v2, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v21, 0x0

    .line 2455
    .local v21, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    move-object/from16 p22, v2

    .end local v2    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local p22, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v1, v2, :cond_1b

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_1a

    goto :goto_a

    .line 2460
    :cond_1a
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2461
    .end local p22    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 p22, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p22    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v22, p22

    move-object/from16 v21, v1

    .end local v21    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_b

    .line 2457
    .end local v1    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v21    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1b
    :goto_a
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2458
    .end local p22    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 p22, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p22    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v22, p22

    move-object/from16 v21, v1

    .line 2463
    .end local p22    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v22, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    const/16 v23, 0x7

    const/16 v20, 0x1

    move-object v2, v6

    move/from16 v24, v3

    .end local v3    # "dimension":I
    .local v24, "dimension":I
    move-object v3, v7

    move/from16 v25, v8

    move/from16 p13, v11

    move-object/from16 v8, v17

    move/from16 v11, v23

    move/from16 v17, v4

    .end local v4    # "matchMaxDimension":I
    .end local v11    # "matchMinDimension":I
    .local v8, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v17, "matchMaxDimension":I
    .local v25, "numConnections":I
    .local p13, "matchMinDimension":I
    move-object/from16 v4, v21

    move-object/from16 v26, v5

    .end local v5    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v26, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v5, v22

    move/from16 v23, v14

    move-object v14, v6

    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v23, "matchConstraintDefault":I
    move/from16 v6, p24

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 2464
    const/16 v18, 0x0

    .line 2465
    .end local v21    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v22    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v21, v17

    move/from16 v22, v18

    move/from16 v17, p5

    move/from16 v18, p13

    goto :goto_c

    .line 2466
    .end local v23    # "matchConstraintDefault":I
    .end local v24    # "dimension":I
    .end local v25    # "numConnections":I
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local p13    # "matchMinDimension":I
    .restart local v3    # "dimension":I
    .restart local v4    # "matchMaxDimension":I
    .restart local v5    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v8, "numConnections":I
    .restart local v11    # "matchMinDimension":I
    .local v14, "matchConstraintDefault":I
    .local v17, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1c
    move/from16 v24, v3

    move-object/from16 v26, v5

    move/from16 v25, v8

    move/from16 p13, v11

    move/from16 v23, v14

    move-object/from16 v8, v17

    move v11, v1

    move/from16 v17, v4

    move-object v14, v6

    .end local v3    # "dimension":I
    .end local v4    # "matchMaxDimension":I
    .end local v5    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "matchMinDimension":I
    .local v8, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v17, "matchMaxDimension":I
    .restart local v23    # "matchConstraintDefault":I
    .restart local v24    # "dimension":I
    .restart local v25    # "numConnections":I
    .restart local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p13    # "matchMinDimension":I
    const/4 v1, 0x1

    move/from16 v21, v17

    move/from16 v22, v18

    move/from16 v18, p13

    move/from16 v17, v1

    .line 2471
    .end local p5    # "isTerminal":Z
    .end local p13    # "matchMinDimension":I
    .local v17, "isTerminal":Z
    .local v18, "matchMinDimension":I
    .local v21, "matchMaxDimension":I
    .local v22, "variableSize":Z
    :goto_c
    if-eqz p25, :cond_51

    if-eqz p18, :cond_1d

    move-object/from16 v4, p6

    move-object/from16 v3, p7

    move-object/from16 v2, p11

    move-object v6, v7

    move/from16 v30, v13

    move/from16 v5, v23

    move-object/from16 v0, v26

    move-object v13, v8

    move/from16 v23, v12

    goto/16 :goto_1f

    .line 2501
    :cond_1d
    const/4 v6, 0x5

    .line 2503
    .local v6, "wrapStrength":I
    if-nez v12, :cond_1e

    if-nez v13, :cond_1e

    if-nez v16, :cond_1e

    move-object/from16 v4, p6

    move/from16 v30, v13

    move/from16 v5, v23

    move-object/from16 v0, v26

    move-object v13, v8

    move/from16 v23, v12

    move-object/from16 v33, v7

    move v7, v6

    move-object/from16 v6, v33

    goto/16 :goto_1d

    .line 2505
    :cond_1e
    if-eqz v12, :cond_1f

    if-nez v13, :cond_1f

    move-object/from16 v4, p6

    move/from16 v30, v13

    move/from16 v5, v23

    move-object/from16 v0, v26

    move-object v13, v8

    move/from16 v23, v12

    move-object/from16 v33, v7

    move v7, v6

    move-object/from16 v6, v33

    goto/16 :goto_1d

    .line 2507
    :cond_1f
    if-nez v12, :cond_21

    if-eqz v13, :cond_21

    .line 2508
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v14, v8, v1, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2509
    if-eqz p3, :cond_20

    .line 2510
    move-object/from16 v5, p6

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v10, v7, v5, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move-object v4, v5

    move/from16 v30, v13

    move/from16 v5, v23

    move-object/from16 v0, v26

    move-object v13, v8

    move/from16 v23, v12

    move-object/from16 v33, v7

    move v7, v6

    move-object/from16 v6, v33

    goto/16 :goto_1d

    .line 2509
    :cond_20
    move-object/from16 v5, p6

    move-object v4, v5

    move/from16 v30, v13

    move/from16 v5, v23

    move-object/from16 v0, v26

    move-object v13, v8

    move/from16 v23, v12

    move-object/from16 v33, v7

    move v7, v6

    move-object/from16 v6, v33

    goto/16 :goto_1d

    .line 2507
    :cond_21
    move-object/from16 v5, p6

    .line 2512
    if-eqz v12, :cond_4d

    if-eqz v13, :cond_4d

    .line 2514
    const/4 v1, 0x1

    .line 2515
    .local v1, "applyBoundsCheck":Z
    const/4 v2, 0x0

    .line 2516
    .local v2, "applyCentering":Z
    const/4 v3, 0x0

    .line 2517
    .local v3, "applyStrongChecks":Z
    const/4 v4, 0x0

    .line 2518
    .local v4, "applyRangeCheck":Z
    const/16 v27, 0x5

    .line 2519
    .local v27, "rangeCheckStrength":I
    const/16 v28, 0x4

    .line 2520
    .local v28, "boundsCheckStrength":I
    const/16 v29, 0x5

    .line 2522
    .local v29, "centeringStrength":I
    nop

    .line 2523
    const/16 v27, 0x5

    .line 2525
    move-object/from16 v11, p10

    move/from16 p5, v1

    .end local v1    # "applyBoundsCheck":Z
    .local p5, "applyBoundsCheck":Z
    iget-object v1, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2526
    .local v1, "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v11, p11

    move/from16 p20, v2

    move/from16 v33, v23

    move/from16 v23, v12

    move/from16 v12, v33

    .end local v2    # "applyCentering":Z
    .local v12, "matchConstraintDefault":I
    .local v23, "isBeginConnected":Z
    .local p20, "applyCentering":Z
    iget-object v2, v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2527
    .local v2, "endWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v30, v13

    .end local v13    # "isEndConnected":Z
    .local v30, "isEndConnected":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v13

    .line 2529
    .local v13, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v22, :cond_33

    .line 2530
    if-nez v12, :cond_25

    .line 2531
    if-nez v21, :cond_22

    if-nez v18, :cond_22

    .line 2532
    const/4 v3, 0x1

    .line 2533
    const/16 v19, 0x7

    .line 2534
    .end local v27    # "rangeCheckStrength":I
    .local v19, "rangeCheckStrength":I
    const/16 v20, 0x7

    move/from16 v27, v19

    move/from16 v28, v20

    move/from16 v19, p20

    .end local v28    # "boundsCheckStrength":I
    .local v20, "boundsCheckStrength":I
    goto :goto_d

    .line 2536
    .end local v19    # "rangeCheckStrength":I
    .end local v20    # "boundsCheckStrength":I
    .restart local v27    # "rangeCheckStrength":I
    .restart local v28    # "boundsCheckStrength":I
    :cond_22
    const/16 v19, 0x1

    .line 2537
    .end local p20    # "applyCentering":Z
    .local v19, "applyCentering":Z
    const/16 v20, 0x5

    .line 2538
    .end local v27    # "rangeCheckStrength":I
    .local v20, "rangeCheckStrength":I
    const/16 v27, 0x5

    move/from16 v28, v27

    move/from16 v27, v20

    .line 2540
    .end local v20    # "rangeCheckStrength":I
    .restart local v27    # "rangeCheckStrength":I
    :goto_d
    move/from16 p20, v3

    .end local v3    # "applyStrongChecks":Z
    .local p20, "applyStrongChecks":Z
    instance-of v3, v1, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v3, :cond_24

    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v3, :cond_23

    goto :goto_e

    :cond_23
    move/from16 v31, p20

    move/from16 v9, p21

    move/from16 v0, v25

    move/from16 v3, v28

    goto/16 :goto_12

    .line 2541
    :cond_24
    :goto_e
    const/16 v28, 0x4

    move/from16 v31, p20

    move/from16 v9, p21

    move/from16 v0, v25

    move/from16 v3, v28

    goto/16 :goto_12

    .line 2543
    .end local v19    # "applyCentering":Z
    .restart local v3    # "applyStrongChecks":Z
    .local p20, "applyCentering":Z
    :cond_25
    move/from16 p22, v3

    const/4 v3, 0x1

    .end local v3    # "applyStrongChecks":Z
    .local p22, "applyStrongChecks":Z
    if-ne v12, v3, :cond_26

    .line 2544
    const/4 v3, 0x1

    .line 2545
    .end local p20    # "applyCentering":Z
    .local v3, "applyCentering":Z
    const/4 v4, 0x1

    .line 2546
    const/16 v27, 0x7

    move/from16 v9, p21

    move/from16 v31, p22

    move/from16 v19, v3

    move/from16 v0, v25

    move/from16 v3, v28

    goto/16 :goto_12

    .line 2547
    .end local v3    # "applyCentering":Z
    .restart local p20    # "applyCentering":Z
    :cond_26
    const/4 v3, 0x3

    if-ne v12, v3, :cond_32

    .line 2548
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 p23, v4

    .end local v4    # "applyRangeCheck":Z
    .local p23, "applyRangeCheck":Z
    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    .line 2549
    const/4 v3, 0x1

    .line 2550
    .end local p20    # "applyCentering":Z
    .restart local v3    # "applyCentering":Z
    const/4 v4, 0x1

    .line 2551
    .end local p23    # "applyRangeCheck":Z
    .restart local v4    # "applyRangeCheck":Z
    const/16 v19, 0x1

    .line 2552
    .end local p22    # "applyStrongChecks":Z
    .local v19, "applyStrongChecks":Z
    const/16 v27, 0x7

    .line 2553
    const/16 v28, 0x5

    .line 2554
    if-eqz p19, :cond_28

    .line 2555
    const/16 v28, 0x5

    .line 2556
    const/16 v29, 0x4

    .line 2557
    if-eqz p3, :cond_27

    .line 2558
    const/16 v29, 0x5

    move/from16 v9, p21

    move/from16 v31, v19

    move/from16 v0, v25

    move/from16 v19, v3

    move/from16 v3, v28

    goto/16 :goto_12

    .line 2557
    :cond_27
    move/from16 v9, p21

    move/from16 v31, v19

    move/from16 v0, v25

    move/from16 v19, v3

    move/from16 v3, v28

    goto/16 :goto_12

    .line 2561
    :cond_28
    const/16 v29, 0x7

    move/from16 v9, p21

    move/from16 v31, v19

    move/from16 v0, v25

    move/from16 v19, v3

    move/from16 v3, v28

    goto/16 :goto_12

    .line 2564
    .end local v3    # "applyCentering":Z
    .end local v4    # "applyRangeCheck":Z
    .end local v19    # "applyStrongChecks":Z
    .restart local p20    # "applyCentering":Z
    .restart local p22    # "applyStrongChecks":Z
    .restart local p23    # "applyRangeCheck":Z
    :cond_29
    const/4 v3, 0x1

    .line 2565
    .end local p20    # "applyCentering":Z
    .restart local v3    # "applyCentering":Z
    const/4 v4, 0x1

    .line 2566
    .end local p23    # "applyRangeCheck":Z
    .restart local v4    # "applyRangeCheck":Z
    const/16 v31, 0x1

    .line 2567
    .end local p22    # "applyStrongChecks":Z
    .local v31, "applyStrongChecks":Z
    if-eqz p17, :cond_2d

    .line 2570
    move/from16 v9, p21

    move/from16 p20, v3

    move/from16 v0, v25

    const/4 v3, 0x2

    .end local v3    # "applyCentering":Z
    .end local v25    # "numConnections":I
    .local v0, "numConnections":I
    .restart local p20    # "applyCentering":Z
    if-eq v9, v3, :cond_2b

    const/4 v3, 0x1

    if-ne v9, v3, :cond_2a

    goto :goto_f

    :cond_2a
    const/16 v20, 0x0

    goto :goto_10

    :cond_2b
    :goto_f
    const/16 v20, 0x1

    :goto_10
    move/from16 v3, v20

    .line 2572
    .local v3, "otherSideInvariable":Z
    if-nez v3, :cond_2c

    .line 2573
    const/16 v27, 0x7

    .line 2574
    const/16 v28, 0x5

    .line 2576
    .end local v3    # "otherSideInvariable":Z
    :cond_2c
    move/from16 v19, p20

    move/from16 v3, v28

    goto/16 :goto_12

    .line 2577
    .end local v0    # "numConnections":I
    .end local p20    # "applyCentering":Z
    .local v3, "applyCentering":Z
    .restart local v25    # "numConnections":I
    :cond_2d
    move/from16 v9, p21

    move/from16 p20, v3

    move/from16 v0, v25

    .end local v3    # "applyCentering":Z
    .end local v25    # "numConnections":I
    .restart local v0    # "numConnections":I
    .restart local p20    # "applyCentering":Z
    const/16 v27, 0x5

    .line 2578
    if-lez v21, :cond_2e

    .line 2579
    const/16 v28, 0x5

    move/from16 v19, p20

    move/from16 v3, v28

    goto :goto_12

    .line 2580
    :cond_2e
    if-nez v21, :cond_31

    if-nez v18, :cond_31

    .line 2581
    if-nez p19, :cond_2f

    .line 2582
    const/16 v28, 0x7

    move/from16 v19, p20

    move/from16 v3, v28

    goto :goto_12

    .line 2584
    :cond_2f
    if-eq v1, v13, :cond_30

    if-eq v2, v13, :cond_30

    .line 2585
    const/4 v3, 0x4

    move/from16 v27, v3

    .end local v27    # "rangeCheckStrength":I
    .local v3, "rangeCheckStrength":I
    goto :goto_11

    .line 2587
    .end local v3    # "rangeCheckStrength":I
    .restart local v27    # "rangeCheckStrength":I
    :cond_30
    const/4 v3, 0x5

    move/from16 v27, v3

    .line 2589
    :goto_11
    const/16 v28, 0x4

    move/from16 v19, p20

    move/from16 v3, v28

    goto :goto_12

    .line 2600
    :cond_31
    move/from16 v19, p20

    move/from16 v3, v28

    goto :goto_12

    .line 2547
    .end local v0    # "numConnections":I
    .end local v31    # "applyStrongChecks":Z
    .restart local v25    # "numConnections":I
    .restart local p22    # "applyStrongChecks":Z
    :cond_32
    move/from16 v9, p21

    move/from16 p23, v4

    move/from16 v0, v25

    .end local v4    # "applyRangeCheck":Z
    .end local v25    # "numConnections":I
    .restart local v0    # "numConnections":I
    .restart local p23    # "applyRangeCheck":Z
    move/from16 v19, p20

    move/from16 v31, p22

    move/from16 v3, v28

    goto :goto_12

    .line 2596
    .end local v0    # "numConnections":I
    .end local p22    # "applyStrongChecks":Z
    .end local p23    # "applyRangeCheck":Z
    .local v3, "applyStrongChecks":Z
    .restart local v4    # "applyRangeCheck":Z
    .restart local v25    # "numConnections":I
    :cond_33
    move/from16 v9, p21

    move/from16 p22, v3

    move/from16 p23, v4

    move/from16 v0, v25

    .end local v3    # "applyStrongChecks":Z
    .end local v4    # "applyRangeCheck":Z
    .end local v25    # "numConnections":I
    .restart local v0    # "numConnections":I
    .restart local p22    # "applyStrongChecks":Z
    .restart local p23    # "applyRangeCheck":Z
    const/4 v3, 0x1

    .line 2597
    .end local p20    # "applyCentering":Z
    .local v3, "applyCentering":Z
    const/4 v4, 0x1

    move/from16 v31, p22

    move/from16 v19, v3

    move/from16 v3, v28

    .line 2600
    .end local v28    # "boundsCheckStrength":I
    .end local p22    # "applyStrongChecks":Z
    .end local p23    # "applyRangeCheck":Z
    .local v3, "boundsCheckStrength":I
    .restart local v4    # "applyRangeCheck":Z
    .local v19, "applyCentering":Z
    .restart local v31    # "applyStrongChecks":Z
    :goto_12
    if-eqz v4, :cond_34

    move/from16 v25, v0

    move-object/from16 v0, v26

    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "numConnections":I
    if-ne v0, v8, :cond_35

    if-eq v1, v13, :cond_35

    .line 2602
    const/4 v4, 0x0

    .line 2603
    const/16 v20, 0x0

    move/from16 v26, v4

    .end local p5    # "applyBoundsCheck":Z
    .local v20, "applyBoundsCheck":Z
    goto :goto_13

    .line 2600
    .end local v20    # "applyBoundsCheck":Z
    .end local v25    # "numConnections":I
    .local v0, "numConnections":I
    .restart local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local p5    # "applyBoundsCheck":Z
    :cond_34
    move/from16 v25, v0

    move-object/from16 v0, v26

    .line 2606
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "numConnections":I
    :cond_35
    move/from16 v20, p5

    move/from16 v26, v4

    .end local v4    # "applyRangeCheck":Z
    .end local p5    # "applyBoundsCheck":Z
    .restart local v20    # "applyBoundsCheck":Z
    .local v26, "applyRangeCheck":Z
    :goto_13
    if-eqz v19, :cond_36

    .line 2607
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2608
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v28

    .line 2607
    move-object v11, v1

    .end local v1    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v11, "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v1, p1

    move/from16 p5, v12

    move-object v12, v2

    .end local v2    # "endWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v12, "endWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local p5, "matchConstraintDefault":I
    move-object v2, v7

    move/from16 p20, v3

    .end local v3    # "boundsCheckStrength":I
    .local p20, "boundsCheckStrength":I
    move-object v3, v0

    move-object v15, v5

    move/from16 v5, p16

    move/from16 v32, v6

    .end local v6    # "wrapStrength":I
    .local v32, "wrapStrength":I
    move-object v6, v8

    move-object v15, v7

    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v15, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v7, v14

    move-object v9, v8

    .end local v8    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v9, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v8, v28

    move-object/from16 p22, v13

    move-object v13, v9

    .end local v9    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local p22, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v9, v29

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_14

    .line 2606
    .end local v11    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v15    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v32    # "wrapStrength":I
    .end local p5    # "matchConstraintDefault":I
    .end local p20    # "boundsCheckStrength":I
    .end local p22    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "endWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "boundsCheckStrength":I
    .restart local v6    # "wrapStrength":I
    .restart local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v8    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "matchConstraintDefault":I
    .local v13, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_36
    move-object v11, v1

    move/from16 p20, v3

    move/from16 v32, v6

    move-object v15, v7

    move/from16 p5, v12

    move-object/from16 p22, v13

    move-object v12, v2

    move-object v13, v8

    .line 2611
    .end local v1    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v2    # "endWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "boundsCheckStrength":I
    .end local v6    # "wrapStrength":I
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v11    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v12, "endWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v13, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v15    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v32    # "wrapStrength":I
    .restart local p5    # "matchConstraintDefault":I
    .restart local p20    # "boundsCheckStrength":I
    .restart local p22    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_14
    if-eqz v26, :cond_39

    .line 2612
    if-eqz p3, :cond_38

    if-eq v0, v13, :cond_38

    if-nez v22, :cond_38

    .line 2614
    instance-of v1, v11, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v1, :cond_37

    instance-of v1, v12, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v1, :cond_38

    .line 2615
    :cond_37
    const/4 v1, 0x6

    .end local v27    # "rangeCheckStrength":I
    .local v1, "rangeCheckStrength":I
    goto :goto_15

    .line 2618
    .end local v1    # "rangeCheckStrength":I
    .restart local v27    # "rangeCheckStrength":I
    :cond_38
    move/from16 v1, v27

    .end local v27    # "rangeCheckStrength":I
    .restart local v1    # "rangeCheckStrength":I
    :goto_15
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {v10, v15, v0, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2619
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v14, v13, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_16

    .line 2611
    .end local v1    # "rangeCheckStrength":I
    .restart local v27    # "rangeCheckStrength":I
    :cond_39
    move/from16 v1, v27

    .line 2622
    .end local v27    # "rangeCheckStrength":I
    .restart local v1    # "rangeCheckStrength":I
    :goto_16
    if-eqz v20, :cond_45

    .line 2623
    if-eqz v31, :cond_43

    if-eqz p19, :cond_3b

    if-eqz p4, :cond_3a

    goto :goto_17

    :cond_3a
    move/from16 v4, p20

    move-object/from16 v3, p22

    goto :goto_18

    .line 2624
    :cond_3b
    :goto_17
    move/from16 v2, p20

    .line 2625
    .local v2, "strength":I
    move-object/from16 v3, p22

    .end local p22    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v3, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eq v11, v3, :cond_3c

    if-ne v12, v3, :cond_3d

    .line 2626
    :cond_3c
    const/4 v2, 0x6

    .line 2628
    :cond_3d
    instance-of v4, v11, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v4, :cond_3e

    instance-of v4, v12, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_3f

    .line 2629
    :cond_3e
    const/4 v2, 0x5

    .line 2631
    :cond_3f
    instance-of v4, v11, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v4, :cond_40

    instance-of v4, v12, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v4, :cond_41

    .line 2632
    :cond_40
    const/4 v2, 0x5

    .line 2634
    :cond_41
    if-eqz p19, :cond_42

    .line 2635
    const/4 v2, 0x5

    .line 2637
    :cond_42
    move/from16 v4, p20

    .end local p20    # "boundsCheckStrength":I
    .local v4, "boundsCheckStrength":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_18

    .line 2623
    .end local v2    # "strength":I
    .end local v3    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "boundsCheckStrength":I
    .restart local p20    # "boundsCheckStrength":I
    .restart local p22    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_43
    move/from16 v4, p20

    move-object/from16 v3, p22

    .line 2640
    .end local p20    # "boundsCheckStrength":I
    .end local p22    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "boundsCheckStrength":I
    :goto_18
    if-eqz p3, :cond_44

    .line 2641
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .end local v4    # "boundsCheckStrength":I
    .local v2, "boundsCheckStrength":I
    goto :goto_19

    .line 2640
    .end local v2    # "boundsCheckStrength":I
    .restart local v4    # "boundsCheckStrength":I
    :cond_44
    move v2, v4

    .line 2643
    .end local v4    # "boundsCheckStrength":I
    .restart local v2    # "boundsCheckStrength":I
    :goto_19
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    invoke-virtual {v10, v15, v0, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2644
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v10, v14, v13, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_1a

    .line 2622
    .end local v2    # "boundsCheckStrength":I
    .end local v3    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local p20    # "boundsCheckStrength":I
    .restart local p22    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_45
    move/from16 v4, p20

    move-object/from16 v3, p22

    .end local p20    # "boundsCheckStrength":I
    .end local p22    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "boundsCheckStrength":I
    move v2, v4

    .line 2647
    .end local v4    # "boundsCheckStrength":I
    .restart local v2    # "boundsCheckStrength":I
    :goto_1a
    if-eqz p3, :cond_48

    .line 2648
    const/4 v4, 0x0

    .line 2649
    .local v4, "margin":I
    move-object/from16 v5, p6

    move-object v6, v15

    .end local v15    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v6, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    if-ne v5, v0, :cond_46

    .line 2650
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2652
    :cond_46
    if-eq v0, v5, :cond_47

    .line 2653
    move/from16 v7, v32

    .end local v32    # "wrapStrength":I
    .local v7, "wrapStrength":I
    invoke-virtual {v10, v6, v5, v4, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1b

    .line 2652
    .end local v7    # "wrapStrength":I
    .restart local v32    # "wrapStrength":I
    :cond_47
    move/from16 v7, v32

    .end local v32    # "wrapStrength":I
    .restart local v7    # "wrapStrength":I
    goto :goto_1b

    .line 2647
    .end local v4    # "margin":I
    .end local v6    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "wrapStrength":I
    .restart local v15    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v32    # "wrapStrength":I
    :cond_48
    move-object/from16 v5, p6

    move-object v6, v15

    move/from16 v7, v32

    .line 2657
    .end local v15    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v32    # "wrapStrength":I
    .restart local v6    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v7    # "wrapStrength":I
    :goto_1b
    if-eqz p3, :cond_4b

    if-eqz v22, :cond_4b

    move-object v4, v5

    if-nez p14, :cond_4c

    if-nez v18, :cond_4c

    .line 2658
    if-eqz v22, :cond_4a

    move/from16 v5, p5

    const/4 v8, 0x3

    .end local p5    # "matchConstraintDefault":I
    .local v5, "matchConstraintDefault":I
    if-ne v5, v8, :cond_49

    .line 2659
    const/4 v8, 0x0

    const/4 v9, 0x7

    invoke-virtual {v10, v14, v6, v8, v9}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1d

    .line 2658
    :cond_49
    const/4 v8, 0x0

    goto :goto_1c

    .end local v5    # "matchConstraintDefault":I
    .restart local p5    # "matchConstraintDefault":I
    :cond_4a
    move/from16 v5, p5

    const/4 v8, 0x0

    .line 2661
    .end local p5    # "matchConstraintDefault":I
    .restart local v5    # "matchConstraintDefault":I
    :goto_1c
    invoke-virtual {v10, v14, v6, v8, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1d

    .line 2657
    .end local v5    # "matchConstraintDefault":I
    .restart local p5    # "matchConstraintDefault":I
    :cond_4b
    move-object v4, v5

    :cond_4c
    move/from16 v5, p5

    .end local p5    # "matchConstraintDefault":I
    .restart local v5    # "matchConstraintDefault":I
    goto :goto_1d

    .line 2512
    .end local v0    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v1    # "rangeCheckStrength":I
    .end local v2    # "boundsCheckStrength":I
    .end local v3    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "matchConstraintDefault":I
    .end local v11    # "beginWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "applyCentering":Z
    .end local v20    # "applyBoundsCheck":Z
    .end local v29    # "centeringStrength":I
    .end local v30    # "isEndConnected":Z
    .end local v31    # "applyStrongChecks":Z
    .local v6, "wrapStrength":I
    .local v7, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v8    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v12, "isBeginConnected":Z
    .local v13, "isEndConnected":Z
    .local v23, "matchConstraintDefault":I
    .local v26, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_4d
    move-object v4, v5

    move/from16 v30, v13

    move/from16 v5, v23

    move-object/from16 v0, v26

    move-object v13, v8

    move/from16 v23, v12

    move-object/from16 v33, v7

    move v7, v6

    move-object/from16 v6, v33

    .line 2666
    .end local v8    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v12    # "isBeginConnected":Z
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v0    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v5    # "matchConstraintDefault":I
    .local v6, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v7, "wrapStrength":I
    .local v13, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v23, "isBeginConnected":Z
    .restart local v30    # "isEndConnected":Z
    :goto_1d
    if-eqz p3, :cond_4f

    if-eqz v17, :cond_4f

    .line 2667
    const/4 v1, 0x0

    .line 2668
    .local v1, "margin":I
    move-object/from16 v2, p11

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4e

    .line 2669
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 2671
    :cond_4e
    move-object/from16 v3, p7

    if-eq v13, v3, :cond_50

    .line 2672
    invoke-virtual {v10, v3, v14, v1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1e

    .line 2666
    .end local v1    # "margin":I
    :cond_4f
    move-object/from16 v3, p7

    move-object/from16 v2, p11

    .line 2675
    :cond_50
    :goto_1e
    return-void

    .line 2471
    .end local v0    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "matchConstraintDefault":I
    .end local v6    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v30    # "isEndConnected":Z
    .local v7, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v8    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v12    # "isBeginConnected":Z
    .local v13, "isEndConnected":Z
    .local v23, "matchConstraintDefault":I
    .restart local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_51
    move-object/from16 v4, p6

    move-object/from16 v3, p7

    move-object/from16 v2, p11

    move-object v6, v7

    move/from16 v30, v13

    move/from16 v5, v23

    move-object/from16 v0, v26

    move-object v13, v8

    move/from16 v23, v12

    .line 2477
    .end local v7    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v12    # "isBeginConnected":Z
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v0    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v5    # "matchConstraintDefault":I
    .restart local v6    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v23, "isBeginConnected":Z
    .restart local v30    # "isEndConnected":Z
    :goto_1f
    move/from16 v1, v25

    const/4 v7, 0x2

    .end local v25    # "numConnections":I
    .local v1, "numConnections":I
    if-ge v1, v7, :cond_56

    if-eqz p3, :cond_56

    if-eqz v17, :cond_56

    .line 2478
    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {v10, v6, v4, v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2479
    if-nez p2, :cond_53

    move v7, v1

    move-object/from16 v1, p0

    .end local v1    # "numConnections":I
    .local v7, "numConnections":I
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_52

    goto :goto_20

    :cond_52
    const/4 v8, 0x0

    goto :goto_21

    .end local v7    # "numConnections":I
    .restart local v1    # "numConnections":I
    :cond_53
    move v7, v1

    move-object/from16 v1, p0

    .end local v1    # "numConnections":I
    .restart local v7    # "numConnections":I
    :goto_20
    const/4 v8, 0x1

    .line 2480
    .local v8, "applyEnd":Z
    :goto_21
    if-nez p2, :cond_55

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_55

    .line 2483
    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2484
    .local v9, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_54

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_54

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_54

    .line 2487
    const/4 v8, 0x1

    goto :goto_22

    .line 2489
    :cond_54
    const/4 v8, 0x0

    .line 2492
    .end local v9    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_55
    :goto_22
    if-eqz v8, :cond_57

    .line 2493
    const/4 v9, 0x0

    const/4 v11, 0x7

    invoke-virtual {v10, v3, v14, v9, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_23

    .line 2477
    .end local v7    # "numConnections":I
    .end local v8    # "applyEnd":Z
    .restart local v1    # "numConnections":I
    :cond_56
    move v7, v1

    move-object/from16 v1, p0

    .line 2496
    .end local v1    # "numConnections":I
    .restart local v7    # "numConnections":I
    :cond_57
    :goto_23
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isChainHead(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .line 1951
    mul-int/lit8 v0, p1, 0x2

    .line 1952
    .local v0, "offset":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v2, v0

    if-eq v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, v2, v1

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 59
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 1975
    move-object/from16 v13, p0

    move-object/from16 v9, p1

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 1976
    .local v4, "left":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 1977
    .local v3, "right":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1978
    .local v1, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 1979
    .local v0, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v15

    .line 1981
    .local v15, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v5, 0x1

    if-eqz v2, :cond_0

    .line 1982
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->widgets:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->widgets:J

    .line 1984
    :cond_0
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    const/4 v14, 0x7

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_6

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_6

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_6

    .line 1987
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_1

    .line 1988
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->graphSolved:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->graphSolved:J

    .line 1990
    :cond_1
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1991
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1992
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1993
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1994
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v15, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 1995
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_5

    .line 1996
    if-eqz v2, :cond_2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v11

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_2

    move v2, v12

    goto :goto_0

    :cond_2
    move v2, v11

    .line 1997
    .local v2, "horizontalParentWrapContent":Z
    :goto_0
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_3

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v12

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_3

    move v5, v12

    goto :goto_1

    :cond_3
    move v5, v11

    .line 1998
    .local v5, "verticalParentWrapContent":Z
    :goto_1
    if-eqz v2, :cond_4

    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v6, v6, v11

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1999
    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 2000
    .local v6, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v6, v3, v11, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2002
    .end local v6    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v6, v6, v12

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2003
    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 2004
    .restart local v6    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v6, v0, v11, v14}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2007
    .end local v2    # "horizontalParentWrapContent":Z
    .end local v5    # "verticalParentWrapContent":Z
    .end local v6    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_5
    return-void

    .line 2009
    :cond_6
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_7

    .line 2010
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->linearSolved:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Landroidx/constraintlayout/solver/Metrics;->linearSolved:J

    .line 2013
    :cond_7
    const/4 v2, 0x0

    .line 2014
    .local v2, "inHorizontalChain":Z
    const/4 v5, 0x0

    .line 2015
    .local v5, "inVerticalChain":Z
    const/4 v6, 0x0

    .line 2016
    .local v6, "horizontalParentWrapContent":Z
    const/4 v7, 0x0

    .line 2018
    .local v7, "verticalParentWrapContent":Z
    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v10, 0x8

    if-eqz v8, :cond_e

    .line 2019
    if-eqz v8, :cond_8

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v11

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v14, :cond_8

    move v8, v12

    goto :goto_2

    :cond_8
    move v8, v11

    :goto_2
    move v6, v8

    .line 2020
    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v8, :cond_9

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v12

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v14, :cond_9

    move v8, v12

    goto :goto_3

    :cond_9
    move v8, v11

    :goto_3
    move v7, v8

    .line 2023
    invoke-direct {v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2024
    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2025
    const/4 v2, 0x1

    goto :goto_4

    .line 2027
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    .line 2031
    :goto_4
    invoke-direct {v13, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2032
    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v13, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2033
    const/4 v5, 0x1

    goto :goto_5

    .line 2035
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v5

    .line 2038
    :goto_5
    if-nez v2, :cond_c

    if-eqz v6, :cond_c

    iget v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v8, v10, :cond_c

    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_c

    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_c

    .line 2040
    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 2041
    .local v8, "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v8, v3, v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2044
    .end local v8    # "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_c
    if-nez v5, :cond_d

    if-eqz v7, :cond_d

    iget v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v8, v10, :cond_d

    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_d

    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_d

    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v8, :cond_d

    .line 2046
    iget-object v8, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 2047
    .local v8, "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v9, v8, v0, v11, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2051
    .end local v8    # "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_d
    move/from16 v44, v2

    move/from16 v45, v5

    move v14, v6

    move v8, v7

    goto :goto_6

    .line 2018
    :cond_e
    move/from16 v44, v2

    move/from16 v45, v5

    move v14, v6

    move v8, v7

    .line 2051
    .end local v2    # "inHorizontalChain":Z
    .end local v5    # "inVerticalChain":Z
    .end local v6    # "horizontalParentWrapContent":Z
    .end local v7    # "verticalParentWrapContent":Z
    .local v8, "verticalParentWrapContent":Z
    .local v14, "horizontalParentWrapContent":Z
    .local v44, "inHorizontalChain":Z
    .local v45, "inVerticalChain":Z
    :goto_6
    iget v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2052
    .local v2, "width":I
    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v5, :cond_f

    .line 2053
    iget v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2055
    :cond_f
    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2056
    .local v5, "height":I
    iget v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v5, v6, :cond_10

    .line 2057
    iget v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 2061
    :cond_10
    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v11

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_11

    move v6, v12

    goto :goto_7

    :cond_11
    move v6, v11

    .line 2063
    .local v6, "horizontalDimensionFixed":Z
    :goto_7
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v12, :cond_12

    const/4 v7, 0x1

    goto :goto_8

    :cond_12
    move v7, v11

    :goto_8
    move v12, v7

    .line 2068
    .local v12, "verticalDimensionFixed":Z
    const/4 v7, 0x0

    .line 2069
    .local v7, "useRatio":Z
    iget v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2070
    iget v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2072
    iget v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2073
    .local v10, "matchConstraintDefaultWidth":I
    move-object/from16 v21, v0

    .end local v0    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .local v21, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2075
    .local v0, "matchConstraintDefaultHeight":I
    const/16 v17, 0x0

    cmpl-float v11, v11, v17

    move/from16 v17, v2

    .end local v2    # "width":I
    .local v17, "width":I
    if-lez v11, :cond_1a

    iget v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-eq v11, v2, :cond_1a

    .line 2076
    const/4 v7, 0x1

    .line 2077
    iget-object v11, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v19, 0x0

    aget-object v11, v11, v19

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v2, :cond_13

    if-nez v10, :cond_13

    .line 2079
    const/4 v10, 0x3

    .line 2081
    :cond_13
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v2, v2, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v11, :cond_14

    if-nez v0, :cond_14

    .line 2083
    const/4 v0, 0x3

    .line 2086
    :cond_14
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aget-object v2, v2, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v25, v1

    .end local v1    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v25, "top":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v1, 0x3

    if-ne v2, v11, :cond_15

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v2, v2, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v11, :cond_15

    if-ne v10, v1, :cond_15

    if-ne v0, v1, :cond_15

    .line 2090
    invoke-virtual {v13, v14, v8, v6, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    goto/16 :goto_9

    .line 2091
    :cond_15
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x0

    aget-object v2, v2, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v11, :cond_17

    if-ne v10, v1, :cond_17

    .line 2093
    const/4 v1, 0x0

    iput v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2094
    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v2, v1

    .line 2095
    .end local v17    # "width":I
    .restart local v2    # "width":I
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v1, v1, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v11, :cond_16

    .line 2096
    const/4 v10, 0x4

    .line 2097
    const/4 v7, 0x0

    move/from16 v46, v0

    move/from16 v26, v5

    move v1, v7

    move/from16 v47, v10

    goto :goto_a

    .line 2095
    :cond_16
    move/from16 v46, v0

    move/from16 v26, v5

    move v1, v7

    move/from16 v47, v10

    goto :goto_a

    .line 2099
    .end local v2    # "width":I
    .restart local v17    # "width":I
    :cond_17
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v11, 0x1

    aget-object v2, v2, v11

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v11, :cond_1b

    if-ne v0, v1, :cond_1b

    .line 2101
    const/4 v1, 0x1

    iput v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2102
    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 2104
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v2

    iput v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2106
    :cond_18
    iget v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v5, v1

    .line 2107
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v2, :cond_19

    .line 2108
    const/4 v0, 0x4

    .line 2109
    const/4 v7, 0x0

    move/from16 v46, v0

    move/from16 v26, v5

    move v1, v7

    move/from16 v47, v10

    move/from16 v2, v17

    goto :goto_a

    .line 2107
    :cond_19
    move/from16 v46, v0

    move/from16 v26, v5

    move v1, v7

    move/from16 v47, v10

    move/from16 v2, v17

    goto :goto_a

    .line 2075
    .end local v25    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1a
    move-object/from16 v25, v1

    .line 2114
    .end local v1    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1b
    :goto_9
    move/from16 v46, v0

    move/from16 v26, v5

    move v1, v7

    move/from16 v47, v10

    move/from16 v2, v17

    .end local v0    # "matchConstraintDefaultHeight":I
    .end local v5    # "height":I
    .end local v7    # "useRatio":Z
    .end local v10    # "matchConstraintDefaultWidth":I
    .end local v17    # "width":I
    .local v1, "useRatio":Z
    .restart local v2    # "width":I
    .local v26, "height":I
    .local v46, "matchConstraintDefaultHeight":I
    .local v47, "matchConstraintDefaultWidth":I
    :goto_a
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v5, 0x0

    aput v47, v0, v5

    .line 2115
    const/16 v18, 0x1

    aput v46, v0, v18

    .line 2116
    iput-boolean v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 2118
    if-eqz v1, :cond_1d

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v0, :cond_1c

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1e

    goto :goto_b

    :cond_1c
    const/4 v5, -0x1

    :goto_b
    move/from16 v17, v18

    goto :goto_c

    :cond_1d
    const/4 v5, -0x1

    :cond_1e
    const/16 v17, 0x0

    .line 2122
    .local v17, "useHorizontalRatio":Z
    :goto_c
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v7, :cond_1f

    instance-of v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1f

    move/from16 v0, v18

    goto :goto_d

    :cond_1f
    const/4 v0, 0x0

    :goto_d
    move/from16 v27, v0

    .line 2124
    .local v27, "wrapContent":Z
    if-eqz v27, :cond_20

    .line 2125
    const/4 v2, 0x0

    move/from16 v48, v2

    goto :goto_e

    .line 2124
    :cond_20
    move/from16 v48, v2

    .line 2128
    .end local v2    # "width":I
    .local v48, "width":I
    :goto_e
    const/4 v0, 0x1

    .line 2129
    .local v0, "applyPosition":Z
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2130
    const/4 v0, 0x0

    move/from16 v28, v0

    goto :goto_f

    .line 2129
    :cond_21
    move/from16 v28, v0

    .line 2133
    .end local v0    # "applyPosition":Z
    .local v28, "applyPosition":Z
    :goto_f
    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v11, 0x2

    const/16 v29, 0x0

    if-eq v0, v11, :cond_28

    .line 2134
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_25

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_22

    const/4 v10, 0x7

    goto/16 :goto_10

    .line 2142
    :cond_22
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v4, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2143
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v9, v3, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2144
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_24

    .line 2145
    if-eqz v14, :cond_23

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2146
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 2147
    .local v0, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v10, 0x7

    invoke-virtual {v9, v0, v3, v2, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move/from16 v56, v1

    move-object/from16 v57, v3

    move-object/from16 v58, v4

    move/from16 v49, v6

    move/from16 v50, v8

    move/from16 v51, v12

    move/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v54, v21

    move-object/from16 v55, v25

    goto/16 :goto_13

    .line 2145
    .end local v0    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_23
    const/4 v10, 0x7

    move/from16 v56, v1

    move-object/from16 v57, v3

    move-object/from16 v58, v4

    move/from16 v49, v6

    move/from16 v50, v8

    move/from16 v51, v12

    move/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v54, v21

    move-object/from16 v55, v25

    goto/16 :goto_13

    .line 2144
    :cond_24
    const/4 v10, 0x7

    move/from16 v56, v1

    move-object/from16 v57, v3

    move-object/from16 v58, v4

    move/from16 v49, v6

    move/from16 v50, v8

    move/from16 v51, v12

    move/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v54, v21

    move-object/from16 v55, v25

    goto/16 :goto_13

    .line 2134
    :cond_25
    const/4 v10, 0x7

    .line 2135
    :goto_10
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_26

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_11

    :cond_26
    move-object/from16 v7, v29

    .line 2136
    .local v7, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_11
    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_27

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    goto :goto_12

    :cond_27
    move-object/from16 v0, v29

    :goto_12
    move/from16 v49, v6

    .end local v6    # "horizontalDimensionFixed":Z
    .local v49, "horizontalDimensionFixed":Z
    move-object v6, v0

    .line 2137
    .local v6, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x1

    move v0, v5

    const/16 v16, 0x8

    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/16 v19, 0x0

    aget-boolean v5, v5, v19

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v19

    move/from16 v50, v8

    .end local v8    # "verticalParentWrapContent":Z
    .local v50, "verticalParentWrapContent":Z
    move-object v8, v0

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v16, v10

    move-object v10, v0

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v2, v19

    move-object v11, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v51, v12

    .end local v12    # "verticalDimensionFixed":Z
    .local v51, "verticalDimensionFixed":Z
    move v12, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v52, v14

    .end local v14    # "horizontalParentWrapContent":Z
    .local v52, "horizontalParentWrapContent":Z
    move v14, v0

    iget-object v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v0, v0, v2

    move-object/from16 v53, v15

    .end local v15    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .local v53, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    move v15, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v16, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v22, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v23, v0

    iget v0, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v24, v0

    move-object/from16 v54, v21

    .end local v21    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .local v54, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, p0

    move/from16 v56, v1

    move-object/from16 v55, v25

    .end local v1    # "useRatio":Z
    .end local v25    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v55, "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v56, "useRatio":Z
    move-object/from16 v1, p1

    move-object/from16 v57, v3

    .end local v3    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .local v57, "right":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v3, v52

    move-object/from16 v58, v4

    .end local v4    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .local v58, "left":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v4, v50

    move/from16 v9, v27

    move/from16 v13, v48

    move/from16 v18, v44

    move/from16 v19, v45

    move/from16 v20, v47

    move/from16 v21, v46

    move/from16 v25, v28

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZIIIIFZ)V

    .line 2141
    .end local v6    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_13

    .line 2133
    .end local v49    # "horizontalDimensionFixed":Z
    .end local v50    # "verticalParentWrapContent":Z
    .end local v51    # "verticalDimensionFixed":Z
    .end local v52    # "horizontalParentWrapContent":Z
    .end local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v54    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v55    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v56    # "useRatio":Z
    .end local v57    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v58    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "useRatio":Z
    .restart local v3    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .local v6, "horizontalDimensionFixed":Z
    .restart local v8    # "verticalParentWrapContent":Z
    .restart local v12    # "verticalDimensionFixed":Z
    .restart local v14    # "horizontalParentWrapContent":Z
    .restart local v15    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v21    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_28
    move/from16 v56, v1

    move-object/from16 v57, v3

    move-object/from16 v58, v4

    move/from16 v49, v6

    move/from16 v50, v8

    move/from16 v51, v12

    move/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v54, v21

    move-object/from16 v55, v25

    .line 2153
    .end local v1    # "useRatio":Z
    .end local v3    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v4    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "horizontalDimensionFixed":Z
    .end local v8    # "verticalParentWrapContent":Z
    .end local v12    # "verticalDimensionFixed":Z
    .end local v14    # "horizontalParentWrapContent":Z
    .end local v15    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v21    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v49    # "horizontalDimensionFixed":Z
    .restart local v50    # "verticalParentWrapContent":Z
    .restart local v51    # "verticalDimensionFixed":Z
    .restart local v52    # "horizontalParentWrapContent":Z
    .restart local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v54    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v55    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v56    # "useRatio":Z
    .restart local v57    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v58    # "left":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_13
    const/4 v0, 0x1

    .line 2154
    .local v0, "applyVerticalConstraints":Z
    move-object/from16 v7, p0

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_2c

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_2c

    .line 2155
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v8, p1

    move-object/from16 v9, v55

    .end local v55    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v9, "top":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v8, v9, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2156
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v10, v54

    .end local v54    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .local v10, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v8, v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2157
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v11, v53

    .end local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .local v11, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2158
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_2b

    .line 2159
    if-nez v45, :cond_2a

    if-eqz v50, :cond_2a

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_29

    .line 2160
    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2161
    .local v1, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x7

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v10, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_15

    .line 2159
    .end local v1    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_29
    const/4 v2, 0x7

    goto :goto_14

    :cond_2a
    const/4 v2, 0x7

    const/4 v3, 0x1

    :goto_14
    const/4 v4, 0x0

    goto :goto_15

    .line 2158
    :cond_2b
    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2164
    :goto_15
    const/4 v0, 0x0

    goto :goto_16

    .line 2154
    .end local v9    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v54    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v55    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2c
    move-object/from16 v8, p1

    move-object/from16 v11, v53

    move-object/from16 v10, v54

    move-object/from16 v9, v55

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2166
    .end local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v54    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v55    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v10    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v11    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_16
    iget v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2d

    .line 2173
    const/4 v0, 0x0

    move v12, v0

    goto :goto_17

    .line 2166
    :cond_2d
    move v12, v0

    .line 2175
    .end local v0    # "applyVerticalConstraints":Z
    .local v12, "applyVerticalConstraints":Z
    :goto_17
    if-eqz v12, :cond_38

    .line 2177
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v3

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2e

    instance-of v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_2e

    move v0, v3

    goto :goto_18

    :cond_2e
    move v0, v4

    .line 2179
    .end local v27    # "wrapContent":Z
    .local v0, "wrapContent":Z
    :goto_18
    if-eqz v0, :cond_2f

    .line 2180
    const/4 v1, 0x0

    .end local v26    # "height":I
    .local v1, "height":I
    goto :goto_19

    .line 2179
    .end local v1    # "height":I
    .restart local v26    # "height":I
    :cond_2f
    move/from16 v1, v26

    .line 2183
    .end local v26    # "height":I
    .restart local v1    # "height":I
    :goto_19
    if-eqz v56, :cond_31

    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eq v5, v3, :cond_30

    const/4 v6, -0x1

    if-ne v5, v6, :cond_31

    :cond_30
    move/from16 v35, v3

    goto :goto_1a

    :cond_31
    move/from16 v35, v4

    .line 2186
    .local v35, "useVerticalRatio":Z
    :goto_1a
    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_32

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    goto :goto_1b

    :cond_32
    move-object/from16 v5, v29

    .line 2187
    .local v5, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_1b
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_33

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v24, v6

    goto :goto_1c

    :cond_33
    move-object/from16 v24, v29

    .line 2189
    .local v24, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_1c
    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v6, :cond_34

    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v13, 0x8

    if-ne v6, v13, :cond_37

    goto :goto_1d

    :cond_34
    const/16 v13, 0x8

    .line 2191
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v6

    invoke-virtual {v8, v11, v9, v6, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2192
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_36

    .line 2193
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 2194
    .local v6, "baselineTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v13, 0x0

    .line 2195
    .local v13, "baselineMargin":I
    invoke-virtual {v8, v11, v6, v13, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2196
    const/4 v2, 0x0

    .line 2197
    .end local v28    # "applyPosition":Z
    .local v2, "applyPosition":Z
    if-eqz v50, :cond_35

    .line 2198
    iget-object v14, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v14}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    .line 2199
    .local v14, "end":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v15, 0x5

    .line 2200
    .local v15, "wrapStrength":I
    invoke-virtual {v8, v5, v14, v4, v15}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2202
    .end local v6    # "baselineTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v13    # "baselineMargin":I
    .end local v14    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v15    # "wrapStrength":I
    :cond_35
    goto :goto_1e

    .end local v2    # "applyPosition":Z
    .restart local v28    # "applyPosition":Z
    :cond_36
    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-ne v6, v13, :cond_37

    .line 2204
    invoke-virtual {v8, v11, v9, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2208
    :cond_37
    move/from16 v2, v28

    .end local v28    # "applyPosition":Z
    .restart local v2    # "applyPosition":Z
    :goto_1e
    const/16 v20, 0x0

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v23, v4, v3

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v26, v4, v3

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v4

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v30, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v32, v4

    iget-object v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v33, v4, v3

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v34, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v40, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v41, v4

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v42, v4

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move/from16 v21, v50

    move/from16 v22, v52

    move-object/from16 v25, v5

    move/from16 v27, v0

    move/from16 v31, v1

    move/from16 v36, v45

    move/from16 v37, v44

    move/from16 v38, v46

    move/from16 v39, v47

    move/from16 v43, v2

    invoke-direct/range {v18 .. v43}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZZZZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZZIIIIFZ)V

    move/from16 v26, v1

    move/from16 v28, v2

    .line 2214
    .end local v0    # "wrapContent":Z
    .end local v1    # "height":I
    .end local v2    # "applyPosition":Z
    .end local v5    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v24    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v35    # "useVerticalRatio":Z
    .restart local v26    # "height":I
    .restart local v27    # "wrapContent":Z
    .restart local v28    # "applyPosition":Z
    :cond_38
    if-eqz v56, :cond_3a

    .line 2215
    const/4 v13, 0x7

    .line 2216
    .local v13, "strength":I
    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_39

    .line 2217
    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v3, v57

    move-object/from16 v4, v58

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto :goto_1f

    .line 2219
    :cond_39
    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move-object v3, v10

    move-object v4, v9

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    .line 2223
    .end local v13    # "strength":I
    :cond_3a
    :goto_1f
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2224
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {v8, v7, v0, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 2232
    :cond_3b
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 2

    .line 1412
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .locals 1
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1459
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1460
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 9
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I

    .line 1473
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_e

    .line 1476
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_9

    .line 1477
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1478
    .local v0, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1479
    .local v2, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1480
    .local v3, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1481
    .local v4, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v5, 0x0

    .line 1482
    .local v5, "centerX":Z
    const/4 v6, 0x0

    .line 1483
    .local v6, "centerY":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    .line 1484
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1487
    :cond_1
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1489
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1491
    const/4 v5, 0x1

    .line 1493
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    if-eqz v4, :cond_4

    .line 1494
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 1497
    :cond_4
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1499
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7, p2, v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1501
    const/4 v6, 0x1

    .line 1503
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    .line 1504
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1505
    .local v7, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1506
    .end local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 1507
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1508
    .restart local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .end local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_2

    .line 1509
    :cond_7
    if-eqz v6, :cond_8

    .line 1510
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1511
    .restart local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    goto :goto_3

    .line 1509
    .end local v7    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_8
    :goto_2
    nop

    .line 1513
    .end local v0    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Z
    .end local v6    # "centerY":Z
    :goto_3
    goto/16 :goto_9

    :cond_9
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_c

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_a

    goto :goto_4

    .line 1521
    :cond_a
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_b

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_d

    .line 1523
    :cond_b
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1525
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1527
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1528
    .local v0, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1529
    .end local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    .line 1515
    :cond_c
    :goto_4
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1517
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1519
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1520
    .restart local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1521
    .end local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_d
    goto/16 :goto_9

    .line 1530
    :cond_e
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_10

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_f

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_10

    .line 1533
    :cond_f
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1534
    .local v0, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1535
    .local v2, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1536
    .local v3, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1537
    invoke-virtual {v3, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1538
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1539
    .local v4, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1540
    .end local v0    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    :cond_10
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_12

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v0, :cond_11

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_12

    .line 1543
    :cond_11
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1544
    .local v0, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1545
    .local v2, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1546
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1547
    .local v3, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1548
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1549
    .local v4, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1550
    .end local v0    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    :cond_12
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_13

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_13

    .line 1553
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1554
    .local v0, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1555
    .local v2, "leftTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1556
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1557
    .local v3, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1558
    .local v4, "rightTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1559
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1560
    .local v5, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1561
    .end local v0    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "leftTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "rightTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    :cond_13
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v0, :cond_14

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_14

    .line 1564
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1565
    .local v0, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1566
    .local v2, "topTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1567
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1568
    .local v3, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1569
    .local v4, "bottomTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1570
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1571
    .local v5, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1572
    .end local v0    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "topTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "bottomTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_9

    .line 1573
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1574
    .local v0, "fromAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1575
    .local v1, "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1578
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_17

    .line 1579
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1580
    .local v2, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1581
    .restart local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_15

    .line 1582
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1584
    :cond_15
    if-eqz v3, :cond_16

    .line 1585
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1587
    :cond_16
    const/4 p4, 0x0

    .line 1588
    .end local v2    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_8

    :cond_17
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v2, :cond_1c

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_18

    goto :goto_7

    .line 1614
    :cond_18
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v2, :cond_1a

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_19

    goto :goto_6

    :cond_19
    :goto_5
    goto :goto_8

    .line 1616
    :cond_1a
    :goto_6
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1617
    .local v2, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eq v3, v1, :cond_1b

    .line 1618
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1620
    :cond_1b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1621
    .local v3, "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1622
    .local v4, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1623
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1624
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_8

    .line 1590
    .end local v2    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1c
    :goto_7
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1591
    .local v2, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_1d

    .line 1592
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1594
    :cond_1d
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1595
    .local v3, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v1, :cond_1e

    .line 1596
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1598
    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1599
    .local v4, "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1600
    .restart local v5    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1601
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1602
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_5

    .line 1638
    .end local v2    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1f
    :goto_8
    invoke-virtual {v0, v1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Z

    .line 1641
    .end local v0    # "fromAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_20
    :goto_9
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 3
    .param p1, "from"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I

    .line 1443
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1444
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    .line 1446
    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 6
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "angle"    # F
    .param p3, "radius"    # I

    .line 485
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 487
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 488
    return-void
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "src"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 2714
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 2715
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 2717
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2718
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2720
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget-object v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    .line 2721
    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 2723
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 2724
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 2725
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 2726
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 2727
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 2728
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 2729
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 2731
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2732
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2734
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 2735
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 2736
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 2737
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 2742
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2743
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2744
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2745
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2746
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2747
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2748
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2749
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 2750
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2751
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2753
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2754
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2755
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 2756
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 2758
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 2759
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 2760
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 2761
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 2763
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 2764
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 2766
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 2767
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2768
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 2770
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 2771
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 2773
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 2774
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 2775
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 2776
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 2777
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 2779
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToTop:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToTop:I

    .line 2780
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToLeft:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToLeft:I

    .line 2781
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToRight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToRight:I

    .line 2782
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToBottom:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDistToBottom:I

    .line 2783
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 2784
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 2786
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 2787
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 2789
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 2790
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 2791
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 2792
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 2794
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 2795
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 2796
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 2797
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 2798
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v5, v4, v2

    aput v5, v0, v2

    .line 2799
    aget v4, v4, v3

    aput v4, v0, v3

    .line 2801
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 2802
    aget-object v4, v4, v3

    aput-object v4, v0, v3

    .line 2804
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v4, v2

    aput-object v5, v0, v2

    .line 2805
    aget-object v2, v4, v3

    aput-object v2, v0, v3

    .line 2807
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2808
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_2
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2809
    return-void
.end method

.method public createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 5
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 581
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 582
    .local v0, "left":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 583
    .local v1, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 584
    .local v2, "right":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 585
    .local v3, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_0

    .line 586
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    .line 588
    :cond_0
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1738
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1766
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1764
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 1758
    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1755
    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1761
    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1752
    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1749
    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1746
    :pswitch_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1743
    :pswitch_7
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 1740
    :pswitch_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 866
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBiasPercent(I)F
    .locals 1
    .param p1, "orientation"    # I

    .line 842
    if-nez p1, :cond_0

    .line 843
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0

    .line 844
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 845
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0

    .line 847
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 783
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 876
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 1

    .line 1347
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1
    .param p1, "orientation"    # I

    .line 1794
    if-nez p1, :cond_0

    .line 1795
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 1796
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1797
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    return-object v0

    .line 1799
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1113
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1122
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getHasBaseline()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 690
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 691
    const/4 v0, 0x0

    return v0

    .line 693
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 821
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 7

    .line 1878
    const/4 v0, 0x0

    .line 1879
    .local v0, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1880
    move-object v1, p0

    .line 1882
    .local v1, "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1883
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1884
    .local v2, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1885
    .local v4, "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 1886
    .local v5, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 1887
    move-object v0, v1

    .line 1888
    goto :goto_5

    .line 1890
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1891
    .local v3, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 1892
    move-object v0, v1

    goto :goto_4

    .line 1894
    :cond_4
    move-object v1, v5

    .line 1896
    .end local v2    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 1898
    .end local v1    # "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1385
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1775
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHorizontalMargin()I
    .locals 2

    .line 790
    const/4 v0, 0x0

    .line 791
    .local v0, "margin":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    .line 792
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 794
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1

    .line 795
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 797
    :cond_1
    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 756
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    return v0
.end method

.method public getLength(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 703
    if-nez p1, :cond_0

    .line 704
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0

    .line 705
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 706
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0

    .line 708
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 136
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 747
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 738
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getNextChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "orientation"    # I

    .line 1860
    if-nez p1, :cond_0

    .line 1861
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1862
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1864
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1865
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1866
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1869
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .line 667
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 668
    .local v0, "h":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    .line 669
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v1, v2, :cond_0

    .line 670
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 671
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v1, :cond_1

    .line 672
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 673
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 675
    :cond_1
    const/4 v0, 0x0

    .line 677
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 678
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 681
    :cond_2
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .locals 3

    .line 649
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 650
    .local v0, "w":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    .line 651
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 652
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 653
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v1, :cond_1

    .line 654
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 655
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 657
    :cond_1
    const/4 v0, 0x0

    .line 659
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 660
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 663
    :cond_2
    return v0
.end method

.method public getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPreviousChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "orientation"    # I

    .line 1841
    if-nez p1, :cond_0

    .line 1842
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1843
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1845
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1846
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_1

    .line 1847
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0

    .line 1850
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getRelativePositioning(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 1282
    if-nez p1, :cond_0

    .line 1283
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    return v0

    .line 1284
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1285
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    return v0

    .line 1287
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getRight()I
    .locals 2

    .line 774
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootX()I
    .locals 2

    .line 719
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 2

    .line 729
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .locals 1
    .param p1, "orientation"    # I

    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    return-object v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .line 765
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 831
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 7

    .line 1921
    const/4 v0, 0x0

    .line 1922
    .local v0, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1923
    move-object v1, p0

    .line 1924
    .local v1, "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1925
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1926
    .local v2, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1927
    .local v4, "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 1928
    .local v5, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 1929
    move-object v0, v1

    .line 1930
    goto :goto_5

    .line 1932
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1933
    .local v3, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 1934
    move-object v0, v1

    goto :goto_4

    .line 1936
    :cond_4
    move-object v1, v5

    .line 1938
    .end local v2    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 1941
    .end local v1    # "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_5
    return-object v0
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1405
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 1784
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 2

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "margin":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 808
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1

    .line 809
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    .line 811
    :cond_1
    return v0
.end method

.method public getVisibility()I
    .locals 1

    .line 523
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 642
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 643
    const/4 v0, 0x0

    return v0

    .line 645
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 2

    .line 618
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 619
    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    add-int/2addr v0, v1

    return v0

    .line 621
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 2

    .line 630
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 631
    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    add-int/2addr v0, v1

    return v0

    .line 633
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasBaseline()Z
    .locals 1

    .line 857
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 3
    .param p1, "startType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "endType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "goneMargin"    # I

    .line 1430
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1431
    .local v0, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1432
    .local v1, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p4, p5, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 1433
    return-void
.end method

.method public isHeightWrapContent()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 1827
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 1829
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1831
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaceholder()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 1908
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 1910
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1912
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInVirtualLayout()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpreadHeight()Z
    .locals 3

    .line 160
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpreadWidth()Z
    .locals 3

    .line 152
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isWidthWrapContent()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return v0
.end method

.method public reset()V
    .locals 6

    .line 290
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 292
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 293
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 294
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 295
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 296
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 297
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 300
    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 301
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 302
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 303
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 304
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 305
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 306
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 307
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 308
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 309
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 310
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 311
    sget v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 312
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 313
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    .line 314
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 315
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 316
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 317
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 318
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 319
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 320
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 321
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 322
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 323
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 324
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 326
    aput v3, v0, v5

    .line 327
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 328
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 330
    aput v3, v0, v5

    .line 331
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 332
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 333
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 334
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 335
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 336
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 337
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 338
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 339
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 340
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 341
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 342
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 343
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 344
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v5, v0, v2

    .line 345
    aput-boolean v5, v0, v5

    .line 346
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 347
    return-void
.end method

.method public resetAllConstraints()V
    .locals 1

    .line 1647
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1648
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1649
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1650
    return-void
.end method

.method public resetAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 10
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1659
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1660
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1662
    .local v0, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1663
    return-void

    .line 1667
    .end local v0    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1668
    .local v0, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1669
    .local v1, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1670
    .local v2, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1671
    .local v3, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1672
    .local v4, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1673
    .local v5, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1675
    .local v6, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v4, :cond_3

    .line 1676
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1677
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 1678
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1679
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1681
    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1682
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_2

    .line 1683
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1684
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1686
    :cond_2
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1687
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    .line 1688
    :cond_3
    if-ne p1, v5, :cond_5

    .line 1689
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1690
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 1691
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1692
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1694
    :cond_4
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 1695
    :cond_5
    if-ne p1, v6, :cond_7

    .line 1696
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1697
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_6

    .line 1698
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1699
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1701
    :cond_6
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 1702
    :cond_7
    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_0

    .line 1706
    :cond_8
    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_b

    .line 1707
    :cond_9
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1708
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_1

    .line 1703
    :cond_a
    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1704
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1711
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1712
    return-void
.end method

.method public resetAnchors()V
    .locals 4

    .line 1718
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1719
    .local v0, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1720
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1721
    .local v1, "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1722
    return-void

    .line 1725
    .end local v1    # "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1726
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1727
    .local v3, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1725
    .end local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1729
    .end local v1    # "i":I
    .end local v2    # "mAnchorsSize":I
    :cond_1
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 1
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 390
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 391
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 392
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 394
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 395
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 396
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 397
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 398
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 1
    .param p1, "baseline"    # I

    .line 1311
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1312
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 1313
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "companion"    # Ljava/lang/Object;

    .line 1322
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1323
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 1
    .param p1, "skip"    # I

    .line 1334
    if-ltz p1, :cond_0

    .line 1335
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0

    .line 1337
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1339
    :goto_0
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 539
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 7
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "name"    # Ljava/lang/String;

    .line 559
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 561
    .local v0, "left":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 562
    .local v1, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 563
    .local v2, "right":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 564
    .local v3, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".right"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bottom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 568
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_0

    .line 569
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 570
    .local v4, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".baseline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 572
    .end local v4    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_0
    return-void
.end method

.method public setDimension(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1178
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1179
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 1180
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1182
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1183
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p2, v0, :cond_1

    .line 1184
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1186
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 0
    .param p1, "ratio"    # F
    .param p2, "dimensionRatioSide"    # I

    .line 1103
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1104
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1105
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 12
    .param p1, "ratio"    # Ljava/lang/String;

    .line 1041
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1045
    :cond_0
    const/4 v1, -0x1

    .line 1046
    .local v1, "dimensionRatioSide":I
    const/4 v2, 0x0

    .line 1047
    .local v2, "dimensionRatio":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1048
    .local v3, "len":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1049
    .local v4, "commaIndex":I
    const/4 v5, 0x1

    if-lez v4, :cond_3

    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_3

    .line 1050
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1051
    .local v6, "dimension":Ljava/lang/String;
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1052
    const/4 v1, 0x0

    goto :goto_0

    .line 1053
    :cond_1
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1054
    const/4 v1, 0x1

    .line 1056
    :cond_2
    :goto_0
    nop

    .end local v6    # "dimension":Ljava/lang/String;
    add-int/2addr v4, v5

    .line 1057
    goto :goto_1

    .line 1058
    :cond_3
    const/4 v4, 0x0

    .line 1060
    :goto_1
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1062
    .local v6, "colonIndex":I
    if-ltz v6, :cond_7

    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_7

    .line 1063
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1064
    .local v7, "nominator":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1065
    .local v8, "denominator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1067
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1068
    .local v9, "nominatorValue":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1069
    .local v10, "denominatorValue":F
    cmpl-float v11, v9, v0

    if-lez v11, :cond_5

    cmpl-float v11, v10, v0

    if-lez v11, :cond_5

    .line 1070
    if-ne v1, v5, :cond_4

    .line 1071
    div-float v5, v10, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v2, v5

    goto :goto_2

    .line 1073
    :cond_4
    div-float v5, v9, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 1078
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :cond_5
    :goto_2
    goto :goto_3

    .line 1076
    :catch_0
    move-exception v5

    .line 1080
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_4

    .line 1081
    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1082
    .local v5, "r":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 1084
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v7

    .line 1087
    goto :goto_4

    .line 1085
    :catch_1
    move-exception v7

    .line 1091
    .end local v5    # "r":Ljava/lang/String;
    :cond_8
    :goto_4
    cmpl-float v0, v2, v0

    if-lez v0, :cond_9

    .line 1092
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1093
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1095
    :cond_9
    return-void

    .line 1042
    .end local v1    # "dimensionRatioSide":I
    .end local v2    # "dimensionRatio":F
    .end local v3    # "len":I
    .end local v4    # "commaIndex":I
    .end local v6    # "colonIndex":I
    :cond_a
    :goto_5
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1043
    return-void
.end method

.method public setFrame(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "orientation"    # I

    .line 1240
    if-nez p3, :cond_0

    .line 1241
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    goto :goto_0

    .line 1242
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1243
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 1245
    :cond_1
    :goto_0
    return-void
.end method

.method public setFrame(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1197
    sub-int v0, p3, p1

    .line 1198
    .local v0, "w":I
    sub-int v1, p4, p2

    .line 1200
    .local v1, "h":I
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1201
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1203
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 1204
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1205
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1206
    return-void

    .line 1210
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v0, v2, :cond_1

    .line 1211
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1213
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v1, v2, :cond_2

    .line 1214
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1217
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1218
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1220
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v1, v2, :cond_3

    .line 1221
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1223
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v2, :cond_4

    .line 1224
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1230
    :cond_4
    return-void
.end method

.method public setGoneMargin(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 2
    .param p1, "type"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "goneMargin"    # I

    .line 935
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 949
    :pswitch_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 951
    goto :goto_0

    .line 945
    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 947
    goto :goto_0

    .line 941
    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 943
    goto :goto_0

    .line 937
    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 939
    nop

    .line 959
    :goto_0
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

.method public setHasBaseline(Z)V
    .locals 0
    .param p1, "hasBaseline"    # Z

    .line 168
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline:Z

    .line 169
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .line 979
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 980
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, v0, :cond_0

    .line 981
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 983
    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 0
    .param p1, "heightWrapContent"    # Z

    .line 465
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 466
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0
    .param p1, "horizontalBiasPercent"    # F

    .line 1132
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1133
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0
    .param p1, "horizontalChainStyle"    # I

    .line 1375
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1376
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1254
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1255
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1256
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1257
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1259
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1809
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1810
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 1
    .param p1, "horizontalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1008
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1009
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1010
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1011
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1012
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    if-nez p1, :cond_1

    .line 1013
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1015
    :cond_1
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2
    .param p1, "horizontalWeight"    # F

    .line 1356
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1357
    return-void
.end method

.method public setInPlaceholder(Z)V
    .locals 0
    .param p1, "inPlaceholder"    # Z

    .line 180
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->inPlaceholder:Z

    .line 181
    return-void
.end method

.method public setInVirtualLayout(Z)V
    .locals 0
    .param p1, "inVirtualLayout"    # Z

    .line 132
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mInVirtuaLayout:Z

    .line 133
    return-void
.end method

.method public setLength(II)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "orientation"    # I

    .line 992
    if-nez p2, :cond_0

    .line 993
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_0

    .line 994
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 995
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 997
    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2
    .param p1, "maxHeight"    # I

    .line 148
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 149
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 145
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .line 1164
    if-gez p1, :cond_0

    .line 1165
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    .line 1167
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1169
    :goto_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .line 1151
    if-gez p1, :cond_0

    .line 1152
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    .line 1154
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1156
    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 924
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 925
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 926
    return-void
.end method

.method public setOrigin(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 913
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 914
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 915
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 438
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 439
    return-void
.end method

.method setRelativePositioning(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "orientation"    # I

    .line 1298
    if-nez p2, :cond_0

    .line 1299
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    goto :goto_0

    .line 1300
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1301
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 1303
    :cond_1
    :goto_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 505
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0
    .param p1, "verticalBiasPercent"    # F

    .line 1142
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1143
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0
    .param p1, "verticalChainStyle"    # I

    .line 1395
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1396
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 1268
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1269
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1270
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1271
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1273
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1818
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1819
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 1
    .param p1, "verticalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1026
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1027
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1028
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1029
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1030
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    if-nez p1, :cond_1

    .line 1031
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1033
    :cond_1
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2
    .param p1, "verticalWeight"    # F

    .line 1365
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1366
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 514
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 515
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .line 967
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 968
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 969
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 971
    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0
    .param p1, "widthWrapContent"    # Z

    .line 447
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 448
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .line 894
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 895
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .line 903
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 904
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5
    .param p1, "hparentWrapContent"    # Z
    .param p2, "vparentWrapContent"    # Z
    .param p3, "horizontalDimensionFixed"    # Z
    .param p4, "verticalDimensionFixed"    # Z

    .line 2244
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 2245
    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2246
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_0

    .line 2247
    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 2248
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2249
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne v0, v3, :cond_1

    .line 2251
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2256
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2257
    :cond_2
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_1

    .line 2258
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2259
    :cond_4
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2263
    :cond_5
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_8

    .line 2264
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2265
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2267
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2268
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2269
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2270
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2271
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2285
    :cond_8
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_a

    .line 2286
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_9

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v3, :cond_9

    .line 2287
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3

    .line 2288
    :cond_9
    if-nez v0, :cond_a

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_a

    .line 2289
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2290
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2298
    :cond_a
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromRuns(ZZ)V
    .locals 9
    .param p1, "updateHorizontal"    # Z
    .param p2, "updateVertical"    # Z

    .line 2812
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p1, v0

    .line 2813
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p2, v0

    .line 2814
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2815
    .local v0, "left":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2816
    .local v1, "top":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2817
    .local v2, "right":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2818
    .local v3, "bottom":I
    sub-int v4, v2, v0

    .line 2819
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 2820
    .local v5, "h":I
    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_0

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v2, v6, :cond_0

    if-eq v2, v7, :cond_0

    if-eq v3, v6, :cond_0

    if-ne v3, v7, :cond_1

    .line 2825
    :cond_0
    const/4 v0, 0x0

    .line 2826
    const/4 v1, 0x0

    .line 2827
    const/4 v2, 0x0

    .line 2828
    const/4 v3, 0x0

    .line 2831
    :cond_1
    sub-int v4, v2, v0

    .line 2832
    sub-int v5, v3, v1

    .line 2834
    if-eqz p1, :cond_2

    .line 2835
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 2837
    :cond_2
    if-eqz p2, :cond_3

    .line 2838
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 2841
    :cond_3
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    .line 2842
    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2843
    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2844
    return-void

    .line 2848
    :cond_4
    if-eqz p1, :cond_6

    .line 2849
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v8

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v4, v6, :cond_5

    .line 2850
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2852
    :cond_5
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2853
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v4, v6, :cond_6

    .line 2854
    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2858
    :cond_6
    if-eqz p2, :cond_8

    .line 2859
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_7

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v5, v6, :cond_7

    .line 2860
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2862
    :cond_7
    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2863
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v5, v6, :cond_8

    .line 2864
    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2868
    :cond_8
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 8
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 2683
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 2684
    .local v0, "left":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 2685
    .local v1, "top":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 2686
    .local v2, "right":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 2688
    .local v3, "bottom":I
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_0

    .line 2689
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2690
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v2, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2692
    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_1

    .line 2693
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2694
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 2697
    :cond_1
    sub-int v4, v2, v0

    .line 2698
    .local v4, "w":I
    sub-int v5, v3, v1

    .line 2699
    .local v5, "h":I
    if-ltz v4, :cond_2

    if-ltz v5, :cond_2

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_2

    const v7, 0x7fffffff

    if-eq v0, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-ne v3, v7, :cond_3

    .line 2704
    :cond_2
    const/4 v0, 0x0

    .line 2705
    const/4 v1, 0x0

    .line 2706
    const/4 v2, 0x0

    .line 2707
    const/4 v3, 0x0

    .line 2709
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 2710
    return-void
.end method
