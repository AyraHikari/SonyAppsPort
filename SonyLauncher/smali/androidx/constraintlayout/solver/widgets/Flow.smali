.class public Landroidx/constraintlayout/solver/widgets/Flow;
.super Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 48
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 54
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 55
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 64
    const/4 v2, 0x2

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 65
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 66
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 70
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return v0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return v0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return v0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return v0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return v0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return v0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return v0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return v0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "x2"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return v0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return v0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/widgets/Flow;

    .line 32
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return v0
.end method

.method private createAlignedConstraints(Z)V
    .locals 14
    .param p1, "isInRtl"    # Z

    .line 1084
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 1090
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v0, v1, :cond_1

    .line 1091
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 1092
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1090
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1095
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 1096
    .local v2, "cols":I
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 1098
    .local v0, "rows":I
    const/4 v4, 0x0

    .line 1099
    .local v4, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x8

    if-ge v5, v2, :cond_8

    .line 1100
    move v7, v5

    .line 1101
    .local v7, "index":I
    if-eqz p1, :cond_2

    .line 1102
    sub-int v8, v2, v5

    add-int/lit8 v7, v8, -0x1

    .line 1104
    :cond_2
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v7

    .line 1105
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    if-ne v9, v6, :cond_3

    .line 1106
    goto :goto_2

    .line 1108
    :cond_3
    if-nez v5, :cond_4

    .line 1109
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1110
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1111
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1113
    :cond_4
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_5

    .line 1114
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1116
    :cond_5
    if-lez v5, :cond_6

    .line 1117
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v8, v6, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1118
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1120
    :cond_6
    move-object v4, v8

    .line 1099
    .end local v7    # "index":I
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1122
    .end local v5    # "i":I
    :cond_8
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v0, :cond_e

    .line 1123
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v5

    .line 1124
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_9

    .line 1125
    goto :goto_4

    .line 1127
    :cond_9
    if-nez v5, :cond_a

    .line 1128
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1129
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1130
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1132
    :cond_a
    add-int/lit8 v8, v0, -0x1

    if-ne v5, v8, :cond_b

    .line 1133
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1135
    :cond_b
    if-lez v5, :cond_c

    .line 1136
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v7, v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1137
    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v8, v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1139
    :cond_c
    move-object v4, v7

    .line 1122
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1142
    .end local v5    # "j":I
    :cond_e
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v2, :cond_15

    .line 1143
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    if-ge v7, v0, :cond_14

    .line 1144
    mul-int v8, v7, v2

    add-int/2addr v8, v5

    .line 1145
    .local v8, "index":I
    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    if-ne v9, v3, :cond_f

    .line 1146
    mul-int v9, v5, v0

    add-int v8, v9, v7

    .line 1148
    :cond_f
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v10, v9

    if-lt v8, v10, :cond_10

    .line 1149
    goto :goto_7

    .line 1151
    :cond_10
    aget-object v9, v9, v8

    .line 1152
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_11

    .line 1153
    goto :goto_7

    .line 1155
    :cond_11
    iget-object v10, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v10, v10, v5

    .line 1156
    .local v10, "biggestInCol":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v11, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v7

    .line 1157
    .local v11, "biggestInRow":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eq v9, v10, :cond_12

    .line 1158
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1159
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1161
    :cond_12
    if-eq v9, v11, :cond_13

    .line 1162
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1163
    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v12, v13, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1143
    .end local v8    # "index":I
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v10    # "biggestInCol":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v11    # "biggestInRow":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_13
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1142
    .end local v7    # "j":I
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1167
    .end local v5    # "i":I
    :cond_15
    return-void

    .line 1087
    .end local v0    # "rows":I
    .end local v2    # "cols":I
    .end local v4    # "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_16
    :goto_8
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 195
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 196
    return v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_3

    .line 199
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_1

    .line 200
    return v0

    .line 201
    :cond_1
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 202
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 203
    .local v0, "value":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 204
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v1, p0

    move-object v2, p1

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 206
    :cond_2
    return v0

    .line 209
    .end local v0    # "value":I
    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    return v0
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .locals 7
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "max"    # I

    .line 177
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    return v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_3

    .line 181
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_1

    .line 182
    return v0

    .line 183
    :cond_1
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 184
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 185
    .local v0, "value":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 186
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 188
    :cond_2
    return v0

    .line 191
    .end local v0    # "value":I
    :cond_3
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    return v0
.end method

.method private measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 16
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    .line 931
    .local v5, "done":Z
    const/4 v6, 0x0

    .line 932
    .local v6, "rows":I
    const/4 v7, 0x0

    .line 934
    .local v7, "cols":I
    if-nez v3, :cond_4

    .line 935
    iget v7, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 936
    if-gtz v7, :cond_8

    .line 938
    const/4 v8, 0x0

    .line 939
    .local v8, "w":I
    const/4 v7, 0x0

    .line 940
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_3

    .line 941
    if-lez v9, :cond_0

    .line 942
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v10

    .line 944
    :cond_0
    aget-object v10, v1, v9

    .line 945
    .local v10, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v10, :cond_1

    .line 946
    goto :goto_1

    .line 948
    :cond_1
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 949
    if-le v8, v4, :cond_2

    .line 950
    goto :goto_2

    .line 952
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 940
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 954
    .end local v8    # "w":I
    .end local v9    # "i":I
    :cond_3
    :goto_2
    goto :goto_5

    .line 956
    :cond_4
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 957
    if-gtz v6, :cond_8

    .line 959
    const/4 v8, 0x0

    .line 960
    .local v8, "h":I
    const/4 v6, 0x0

    .line 961
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v2, :cond_8

    .line 962
    if-lez v9, :cond_5

    .line 963
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v8, v10

    .line 965
    :cond_5
    aget-object v10, v1, v9

    .line 966
    .restart local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v10, :cond_6

    .line 967
    goto :goto_4

    .line 969
    :cond_6
    invoke-direct {v0, v10, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v11

    add-int/2addr v8, v11

    .line 970
    if-le v8, v4, :cond_7

    .line 971
    goto :goto_5

    .line 973
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 961
    .end local v10    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 978
    .end local v8    # "h":I
    .end local v9    # "i":I
    :cond_8
    :goto_5
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-nez v8, :cond_9

    .line 979
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 982
    :cond_9
    const/4 v8, 0x1

    if-nez v6, :cond_a

    if-eq v3, v8, :cond_b

    :cond_a
    if-nez v7, :cond_c

    if-nez v3, :cond_c

    .line 984
    :cond_b
    const/4 v5, 0x1

    .line 987
    :cond_c
    :goto_6
    const/4 v9, 0x0

    if-nez v5, :cond_26

    .line 991
    if-nez v3, :cond_d

    .line 992
    int-to-float v10, v2

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    goto :goto_7

    .line 994
    :cond_d
    int-to-float v10, v2

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 997
    :goto_7
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v11, 0x0

    if-eqz v10, :cond_f

    array-length v12, v10

    if-ge v12, v7, :cond_e

    goto :goto_8

    .line 1000
    :cond_e
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 998
    :cond_f
    :goto_8
    new-array v10, v7, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1002
    :goto_9
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_11

    array-length v12, v10

    if-ge v12, v6, :cond_10

    goto :goto_a

    .line 1005
    :cond_10
    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 1003
    :cond_11
    :goto_a
    new-array v10, v6, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v10, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1008
    :goto_b
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c
    if-ge v10, v7, :cond_1a

    .line 1009
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_d
    if-ge v11, v6, :cond_19

    .line 1010
    mul-int v12, v11, v7

    add-int/2addr v12, v10

    .line 1011
    .local v12, "index":I
    if-ne v3, v8, :cond_12

    .line 1012
    mul-int v13, v10, v6

    add-int v12, v13, v11

    .line 1014
    :cond_12
    array-length v13, v1

    if-lt v12, v13, :cond_13

    .line 1015
    goto :goto_e

    .line 1017
    :cond_13
    aget-object v13, v1, v12

    .line 1018
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v13, :cond_14

    .line 1019
    goto :goto_e

    .line 1021
    :cond_14
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v14

    .line 1022
    .local v14, "w":I
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v15, v15, v10

    if-eqz v15, :cond_15

    .line 1023
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_16

    .line 1024
    :cond_15
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v13, v15, v10

    .line 1026
    :cond_16
    invoke-direct {v0, v13, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v15

    .line 1027
    .local v15, "h":I
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v11

    if-eqz v8, :cond_17

    .line 1028
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-ge v8, v15, :cond_18

    .line 1029
    :cond_17
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v13, v8, v11

    .line 1009
    .end local v12    # "index":I
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "w":I
    .end local v15    # "h":I
    :cond_18
    :goto_e
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_d

    .line 1008
    .end local v11    # "j":I
    :cond_19
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_c

    .line 1034
    .end local v10    # "i":I
    :cond_1a
    const/4 v8, 0x0

    .line 1035
    .local v8, "w":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_f
    if-ge v10, v7, :cond_1d

    .line 1036
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v10

    .line 1037
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_1c

    .line 1038
    if-lez v10, :cond_1b

    .line 1039
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v8, v12

    .line 1041
    :cond_1b
    invoke-direct {v0, v11, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v12

    add-int/2addr v8, v12

    .line 1035
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 1044
    .end local v10    # "i":I
    :cond_1d
    const/4 v10, 0x0

    .line 1045
    .local v10, "h":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_10
    if-ge v11, v6, :cond_20

    .line 1046
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v12, v12, v11

    .line 1047
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v12, :cond_1f

    .line 1048
    if-lez v11, :cond_1e

    .line 1049
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v10, v13

    .line 1051
    :cond_1e
    invoke-direct {v0, v12, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    add-int/2addr v10, v13

    .line 1045
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1054
    .end local v11    # "j":I
    :cond_20
    aput v8, p5, v9

    .line 1055
    const/4 v9, 0x1

    aput v10, p5, v9

    .line 1057
    if-nez v3, :cond_23

    .line 1058
    if-le v8, v4, :cond_22

    .line 1059
    if-le v7, v9, :cond_21

    .line 1060
    add-int/lit8 v7, v7, -0x1

    goto :goto_11

    .line 1062
    :cond_21
    const/4 v5, 0x1

    goto :goto_11

    .line 1065
    :cond_22
    const/4 v5, 0x1

    goto :goto_11

    .line 1068
    :cond_23
    if-le v10, v4, :cond_25

    .line 1069
    const/4 v9, 0x1

    if-le v6, v9, :cond_24

    .line 1070
    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    .line 1072
    :cond_24
    const/4 v5, 0x1

    goto :goto_11

    .line 1075
    :cond_25
    const/4 v5, 0x1

    .line 1078
    .end local v8    # "w":I
    .end local v10    # "h":I
    :goto_11
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 1079
    :cond_26
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aput v7, v8, v9

    .line 1080
    const/4 v9, 0x1

    aput v6, v8, v9

    .line 1081
    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 32
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 741
    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_0

    .line 742
    return-void

    .line 745
    :cond_0
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 746
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 747
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    const/4 v1, 0x0

    .line 751
    .local v1, "nbMatchConstraintsWidgets":I
    const/16 v21, 0x0

    const/16 v22, 0x1

    if-nez p3, :cond_7

    .line 752
    const/4 v2, 0x0

    .line 753
    .local v2, "width":I
    const/4 v3, 0x0

    move-object v10, v0

    move v11, v3

    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v10, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_6

    .line 754
    aget-object v12, p1, v11

    .line 755
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 756
    .local v13, "w":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_1

    .line 757
    add-int/lit8 v1, v1, 0x1

    move v14, v1

    goto :goto_1

    .line 756
    :cond_1
    move v14, v1

    .line 759
    .end local v1    # "nbMatchConstraintsWidgets":I
    .local v14, "nbMatchConstraintsWidgets":I
    :goto_1
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v2

    add-int/2addr v0, v13

    if-le v0, v15, :cond_2

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_2

    move/from16 v0, v22

    goto :goto_2

    :cond_2
    move/from16 v0, v21

    .line 760
    .local v0, "doWrap":Z
    :goto_2
    if-nez v0, :cond_3

    if-lez v11, :cond_3

    iget v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v1, :cond_3

    rem-int v1, v11, v1

    if-nez v1, :cond_3

    .line 761
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_3

    .line 763
    :cond_3
    move/from16 v16, v0

    .end local v0    # "doWrap":Z
    .local v16, "doWrap":Z
    :goto_3
    if-eqz v16, :cond_4

    .line 764
    move/from16 v17, v13

    .line 765
    .end local v2    # "width":I
    .local v17, "width":I
    new-instance v18, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 766
    .end local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 767
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v0

    move/from16 v2, v17

    goto :goto_4

    .line 769
    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .end local v17    # "width":I
    .restart local v2    # "width":I
    .restart local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_4
    if-lez v11, :cond_5

    .line 770
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v13

    add-int/2addr v2, v0

    goto :goto_4

    .line 772
    :cond_5
    move v0, v13

    move v2, v0

    .line 775
    :goto_4
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 753
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "w":I
    .end local v16    # "doWrap":Z
    add-int/lit8 v11, v11, 0x1

    move v1, v14

    goto :goto_0

    .line 777
    .end local v2    # "width":I
    .end local v11    # "i":I
    .end local v14    # "nbMatchConstraintsWidgets":I
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_6
    move-object v0, v10

    goto/16 :goto_a

    .line 778
    .end local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_7
    const/4 v2, 0x0

    .line 779
    .local v2, "height":I
    const/4 v3, 0x0

    move-object v10, v0

    move v11, v3

    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v11    # "i":I
    :goto_5
    if-ge v11, v9, :cond_d

    .line 780
    aget-object v12, p1, v11

    .line 781
    .restart local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 782
    .local v13, "h":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_8

    .line 783
    add-int/lit8 v1, v1, 0x1

    move v14, v1

    goto :goto_6

    .line 782
    :cond_8
    move v14, v1

    .line 785
    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v14    # "nbMatchConstraintsWidgets":I
    :goto_6
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v2

    add-int/2addr v0, v13

    if-le v0, v15, :cond_9

    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_9

    move/from16 v0, v22

    goto :goto_7

    :cond_9
    move/from16 v0, v21

    .line 786
    .local v0, "doWrap":Z
    :goto_7
    if-nez v0, :cond_a

    if-lez v11, :cond_a

    iget v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v1, :cond_a

    rem-int v1, v11, v1

    if-nez v1, :cond_a

    .line 787
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_8

    .line 789
    :cond_a
    move/from16 v16, v0

    .end local v0    # "doWrap":Z
    .restart local v16    # "doWrap":Z
    :goto_8
    if-eqz v16, :cond_b

    .line 790
    move/from16 v17, v13

    .line 791
    .end local v2    # "height":I
    .local v17, "height":I
    new-instance v18, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 792
    .end local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 793
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v0

    move/from16 v2, v17

    goto :goto_9

    .line 795
    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .end local v17    # "height":I
    .restart local v2    # "height":I
    .restart local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_b
    if-lez v11, :cond_c

    .line 796
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v13

    add-int/2addr v2, v0

    goto :goto_9

    .line 798
    :cond_c
    move v0, v13

    move v2, v0

    .line 801
    :goto_9
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 779
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "h":I
    .end local v16    # "doWrap":Z
    add-int/lit8 v11, v11, 0x1

    move v1, v14

    goto :goto_5

    .end local v14    # "nbMatchConstraintsWidgets":I
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_d
    move-object v0, v10

    .line 804
    .end local v2    # "height":I
    .end local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .end local v11    # "i":I
    .restart local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :goto_a
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 806
    .local v2, "listCount":I
    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 807
    .local v3, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 808
    .local v4, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 809
    .local v5, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 811
    .local v6, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v7

    .line 812
    .local v7, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v10

    .line 813
    .local v10, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v11

    .line 814
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v12

    .line 816
    .local v12, "paddingBottom":I
    const/4 v13, 0x0

    .line 817
    .local v13, "maxWidth":I
    const/4 v14, 0x0

    .line 819
    .local v14, "maxHeight":I
    nop

    .line 820
    move-object/from16 v23, v0

    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v23, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    move-object/from16 v16, v3

    .end local v3    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v16, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v3, :cond_f

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v0, v21

    goto :goto_c

    :cond_f
    :goto_b
    move/from16 v0, v22

    .line 823
    .local v0, "needInternalMeasure":Z
    :goto_c
    if-lez v1, :cond_12

    if-eqz v0, :cond_12

    .line 825
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_11

    .line 826
    move/from16 v24, v0

    .end local v0    # "needInternalMeasure":Z
    .local v24, "needInternalMeasure":Z
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 827
    .local v0, "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    if-nez p3, :cond_10

    .line 828
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v17

    move/from16 v25, v1

    .end local v1    # "nbMatchConstraintsWidgets":I
    .local v25, "nbMatchConstraintsWidgets":I
    sub-int v1, v15, v17

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_e

    .line 830
    .end local v25    # "nbMatchConstraintsWidgets":I
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_10
    move/from16 v25, v1

    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v25    # "nbMatchConstraintsWidgets":I
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v1

    sub-int v1, v15, v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    .line 825
    .end local v0    # "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :goto_e
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    goto :goto_d

    .end local v24    # "needInternalMeasure":Z
    .end local v25    # "nbMatchConstraintsWidgets":I
    .local v0, "needInternalMeasure":Z
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_11
    move/from16 v24, v0

    move/from16 v25, v1

    .end local v0    # "needInternalMeasure":Z
    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v24    # "needInternalMeasure":Z
    .restart local v25    # "nbMatchConstraintsWidgets":I
    goto :goto_f

    .line 823
    .end local v3    # "i":I
    .end local v24    # "needInternalMeasure":Z
    .end local v25    # "nbMatchConstraintsWidgets":I
    .restart local v0    # "needInternalMeasure":Z
    .restart local v1    # "nbMatchConstraintsWidgets":I
    :cond_12
    move/from16 v24, v0

    move/from16 v25, v1

    .line 835
    .end local v0    # "needInternalMeasure":Z
    .end local v1    # "nbMatchConstraintsWidgets":I
    .restart local v24    # "needInternalMeasure":Z
    .restart local v25    # "nbMatchConstraintsWidgets":I
    :goto_f
    const/4 v0, 0x0

    move v1, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v3, v16

    move/from16 v31, v14

    move v14, v13

    move/from16 v13, v31

    .end local v10    # "paddingTop":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingBottom":I
    .end local v16    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v0, "i":I
    .local v1, "paddingTop":I
    .local v3, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v13, "maxHeight":I
    .local v14, "maxWidth":I
    .local v26, "paddingRight":I
    .local v27, "paddingBottom":I
    :goto_10
    if-ge v0, v2, :cond_18

    .line 836
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v28, v10

    check-cast v28, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 837
    .local v28, "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    if-nez p3, :cond_15

    .line 838
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_13

    .line 839
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 840
    .local v10, "next":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v11

    iget-object v6, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 841
    const/4 v10, 0x0

    .line 842
    .end local v27    # "paddingBottom":I
    .local v10, "paddingBottom":I
    move/from16 v27, v10

    goto :goto_11

    .line 843
    .end local v10    # "paddingBottom":I
    .restart local v27    # "paddingBottom":I
    :cond_13
    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    move/from16 v27, v10

    .line 846
    :goto_11
    invoke-static/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget-object v12, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 847
    .local v12, "currentBottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v10, v28

    move/from16 v11, p3

    move-object/from16 v29, v12

    .end local v12    # "currentBottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v29, "currentBottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v12, v3

    move v9, v13

    .end local v13    # "maxHeight":I
    .local v9, "maxHeight":I
    move-object v13, v4

    move-object/from16 v30, v4

    move v4, v14

    .end local v14    # "maxWidth":I
    .local v4, "maxWidth":I
    .local v30, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v1

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, p4

    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 849
    move-object/from16 v10, v29

    .line 850
    .end local v30    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v10, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v1, 0x0

    .line 851
    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 852
    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v11

    add-int v13, v9, v11

    .line 853
    .end local v9    # "maxHeight":I
    .restart local v13    # "maxHeight":I
    if-lez v0, :cond_14

    .line 854
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v13, v9

    .line 856
    .end local v29    # "currentBottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_14
    move v14, v4

    move-object v4, v10

    goto/16 :goto_13

    .line 857
    .end local v10    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v4, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v14    # "maxWidth":I
    :cond_15
    move-object/from16 v30, v4

    move v9, v13

    move v4, v14

    .end local v13    # "maxHeight":I
    .end local v14    # "maxWidth":I
    .local v4, "maxWidth":I
    .restart local v9    # "maxHeight":I
    .restart local v30    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_16

    .line 858
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 859
    .local v10, "next":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v11

    iget-object v5, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 860
    const/4 v10, 0x0

    .line 861
    .end local v26    # "paddingRight":I
    .local v10, "paddingRight":I
    move/from16 v26, v10

    goto :goto_12

    .line 862
    .end local v10    # "paddingRight":I
    .restart local v26    # "paddingRight":I
    :cond_16
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    move/from16 v26, v10

    .line 865
    :goto_12
    invoke-static/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$1900(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    iget-object v15, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 866
    .local v15, "currentRight":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v10, v28

    move/from16 v11, p3

    move-object v12, v3

    move-object/from16 v13, v30

    move-object v14, v5

    move-object/from16 v29, v15

    .end local v15    # "currentRight":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v29, "currentRight":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v1

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, p4

    invoke-virtual/range {v10 .. v20}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 868
    move-object/from16 v3, v29

    .line 869
    const/4 v7, 0x0

    .line 870
    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v10

    add-int v14, v4, v10

    .line 871
    .end local v4    # "maxWidth":I
    .restart local v14    # "maxWidth":I
    invoke-virtual/range {v28 .. v28}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 872
    .end local v9    # "maxHeight":I
    .local v4, "maxHeight":I
    if-lez v0, :cond_17

    .line 873
    iget v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v14, v9

    move v13, v4

    move-object/from16 v4, v30

    goto :goto_13

    .line 872
    :cond_17
    move v13, v4

    move-object/from16 v4, v30

    .line 835
    .end local v28    # "current":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .end local v29    # "currentRight":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v30    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v4, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v13    # "maxHeight":I
    :goto_13
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p2

    move/from16 v15, p4

    goto/16 :goto_10

    :cond_18
    move-object/from16 v30, v4

    move v9, v13

    move v4, v14

    .line 877
    .end local v0    # "i":I
    .end local v13    # "maxHeight":I
    .end local v14    # "maxWidth":I
    .local v4, "maxWidth":I
    .restart local v9    # "maxHeight":I
    .restart local v30    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    aput v4, p5, v21

    .line 878
    aput v9, p5, v22

    .line 879
    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .locals 23
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "count"    # I
    .param p3, "orientation"    # I
    .param p4, "max"    # I
    .param p5, "measured"    # [I

    .line 894
    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    const/4 v10, 0x0

    .line 898
    .local v10, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1

    .line 899
    new-instance v12, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 900
    .end local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .local v0, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 902
    .end local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_1
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 903
    .end local v10    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    .restart local v0    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->clear()V

    .line 904
    iget-object v14, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 905
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v21

    .line 904
    move-object v12, v0

    move/from16 v13, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v22, p4

    invoke-virtual/range {v12 .. v22}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 908
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_2

    .line 909
    aget-object v2, p1, v1

    .line 910
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 908
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 913
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v1

    aput v1, p5, v11

    .line 914
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aput v1, p5, v2

    .line 915
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 7
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 1180
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 1182
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1183
    .local v0, "isInRtl":Z
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 1199
    :pswitch_0
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_3

    .line 1185
    :pswitch_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1186
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 1187
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 1188
    .local v5, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    invoke-virtual {v5, v0, v4, v6}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1186
    .end local v5    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1190
    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    .line 1192
    :pswitch_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1193
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 1194
    .local v2, "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    invoke-virtual {v2, v0, v1, v3}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1202
    .end local v2    # "list":Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 1203
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 2
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

    .line 85
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 86
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow;

    .line 88
    .local v0, "srcFLow":Landroidx/constraintlayout/solver/widgets/Flow;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 89
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 90
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 91
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 92
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 93
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 95
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 96
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 97
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 98
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 99
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 100
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 102
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 103
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 105
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 106
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 107
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 109
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 111
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 112
    return-void
.end method

.method public measure(IIII)V
    .locals 23
    .param p1, "widthMode"    # I
    .param p2, "widthSize"    # I
    .param p3, "heightMode"    # I
    .param p4, "heightSize"    # I

    .line 217
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    iget v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    const/4 v11, 0x0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {v6, v11, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 219
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 220
    return-void

    .line 223
    :cond_0
    const/4 v12, 0x0

    .line 224
    .local v12, "width":I
    const/4 v13, 0x0

    .line 225
    .local v13, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v14

    .line 226
    .local v14, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v15

    .line 227
    .local v15, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v16

    .line 228
    .local v16, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v17

    .line 230
    .local v17, "paddingBottom":I
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 231
    .local v5, "measured":[I
    sub-int v0, v8, v14

    sub-int/2addr v0, v15

    .line 232
    .local v0, "max":I
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 233
    sub-int v2, v10, v16

    sub-int v0, v2, v17

    move/from16 v18, v0

    goto :goto_0

    .line 232
    :cond_1
    move/from16 v18, v0

    .line 236
    .end local v0    # "max":I
    .local v18, "max":I
    :goto_0
    const/4 v0, -0x1

    if-nez v1, :cond_3

    .line 237
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v0, :cond_2

    .line 238
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 240
    :cond_2
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v0, :cond_5

    .line 241
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    goto :goto_1

    .line 244
    :cond_3
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v1, v0, :cond_4

    .line 245
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 247
    :cond_4
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v1, v0, :cond_5

    .line 248
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 252
    :cond_5
    :goto_1
    iget-object v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 254
    .local v0, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v1, 0x0

    .line 255
    .local v1, "gone":I
    const/4 v2, 0x0

    move/from16 v19, v1

    .end local v1    # "gone":I
    .local v2, "i":I
    .local v19, "gone":I
    :goto_2
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    const/16 v3, 0x8

    if-ge v2, v1, :cond_7

    .line 256
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v2

    .line 257
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 258
    add-int/lit8 v19, v19, 0x1

    .line 255
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_2

    .line 261
    .end local v2    # "i":I
    :cond_7
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    .line 262
    .local v1, "count":I
    if-lez v19, :cond_a

    .line 263
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    sub-int v2, v2, v19

    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-ge v4, v11, :cond_9

    .line 266
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v4

    .line 267
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v21, v1

    .end local v1    # "count":I
    .local v21, "count":I
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 268
    aput-object v11, v0, v2

    .line 269
    add-int/lit8 v2, v2, 0x1

    .line 265
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v21

    const/4 v11, 0x0

    goto :goto_3

    .end local v21    # "count":I
    .restart local v1    # "count":I
    :cond_9
    move/from16 v21, v1

    .line 272
    .end local v1    # "count":I
    .end local v4    # "i":I
    .restart local v21    # "count":I
    move v1, v2

    move-object v11, v0

    move v4, v1

    .end local v21    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 262
    .end local v2    # "j":I
    :cond_a
    move/from16 v21, v1

    .end local v1    # "count":I
    .restart local v21    # "count":I
    move-object v11, v0

    move/from16 v4, v21

    .line 274
    .end local v0    # "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v21    # "count":I
    .local v4, "count":I
    .local v11, "widgets":[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4
    iput-object v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 275
    iput v4, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 276
    iget v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    packed-switch v0, :pswitch_data_0

    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    .end local v4    # "count":I
    .end local v5    # "measured":[I
    .restart local v21    # "count":I
    .local v22, "measured":[I
    goto :goto_5

    .line 278
    .end local v21    # "count":I
    .end local v22    # "measured":[I
    .restart local v4    # "count":I
    .restart local v5    # "measured":[I
    :pswitch_0
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v4

    move/from16 v21, v4

    const/16 v20, 0x1

    .end local v4    # "count":I
    .restart local v21    # "count":I
    move/from16 v4, v18

    move-object/from16 v22, v5

    .end local v5    # "measured":[I
    .restart local v22    # "measured":[I
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 280
    goto :goto_5

    .line 282
    .end local v21    # "count":I
    .end local v22    # "measured":[I
    .restart local v4    # "count":I
    .restart local v5    # "measured":[I
    :pswitch_1
    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    .end local v4    # "count":I
    .end local v5    # "measured":[I
    .restart local v21    # "count":I
    .restart local v22    # "measured":[I
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v21

    move/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 284
    goto :goto_5

    .line 286
    .end local v21    # "count":I
    .end local v22    # "measured":[I
    .restart local v4    # "count":I
    .restart local v5    # "measured":[I
    :pswitch_2
    move/from16 v21, v4

    move-object/from16 v22, v5

    const/16 v20, 0x1

    .end local v4    # "count":I
    .end local v5    # "measured":[I
    .restart local v21    # "count":I
    .restart local v22    # "measured":[I
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v21

    move/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    .line 291
    :goto_5
    const/4 v0, 0x0

    aget v1, v22, v0

    add-int/2addr v1, v14

    add-int/2addr v1, v15

    .line 292
    .end local v12    # "width":I
    .local v1, "width":I
    aget v2, v22, v20

    add-int v2, v2, v16

    add-int v2, v2, v17

    .line 294
    .end local v13    # "height":I
    .local v2, "height":I
    const/4 v3, 0x0

    .line 295
    .local v3, "measuredWidth":I
    const/4 v4, 0x0

    .line 297
    .local v4, "measuredHeight":I
    const/high16 v5, -0x80000000

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v7, v12, :cond_b

    .line 298
    move/from16 v3, p2

    goto :goto_6

    .line 299
    :cond_b
    if-ne v7, v5, :cond_c

    .line 300
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6

    .line 301
    :cond_c
    if-nez v7, :cond_d

    .line 302
    move v3, v1

    .line 305
    :cond_d
    :goto_6
    if-ne v9, v12, :cond_e

    .line 306
    move/from16 v4, p4

    goto :goto_7

    .line 307
    :cond_e
    if-ne v9, v5, :cond_f

    .line 308
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_7

    .line 309
    :cond_f
    if-nez v9, :cond_10

    .line 310
    move v4, v2

    .line 313
    :cond_10
    :goto_7
    invoke-virtual {v6, v3, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 314
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/solver/widgets/Flow;->setWidth(I)V

    .line 315
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/solver/widgets/Flow;->setHeight(I)V

    .line 316
    iget v5, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-lez v5, :cond_11

    move/from16 v0, v20

    :cond_11
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    .line 317
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFirstHorizontalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 146
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 122
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 148
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 124
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 0
    .param p1, "value"    # I

    .line 155
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 156
    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 139
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 140
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0
    .param p1, "value"    # I

    .line 166
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 131
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 132
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 150
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 126
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 152
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 128
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 0
    .param p1, "value"    # I

    .line 170
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "value"    # I

    .line 119
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 120
    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 0
    .param p1, "value"    # I

    .line 159
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 160
    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0
    .param p1, "value"    # F

    .line 143
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 144
    return-void
.end method

.method public setVerticalGap(I)V
    .locals 0
    .param p1, "value"    # I

    .line 168
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 0
    .param p1, "value"    # I

    .line 135
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 136
    return-void
.end method

.method public setWrapMode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 163
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 164
    return-void
.end method
