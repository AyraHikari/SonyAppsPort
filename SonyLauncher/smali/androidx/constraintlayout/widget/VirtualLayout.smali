.class public abstract Landroidx/constraintlayout/widget/VirtualLayout;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "VirtualLayout.java"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 49
    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 52
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 53
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 54
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 55
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    goto :goto_1

    .line 56
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v3, v4, :cond_1

    .line 57
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    .line 52
    .end local v3    # "attr":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 9

    .line 72
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 73
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_4

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 75
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_4

    .line 76
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    .local v1, "container":Landroidx/constraintlayout/widget/ConstraintLayout;
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getVisibility()I

    move-result v2

    .line 78
    .local v2, "visibility":I
    const/4 v3, 0x0

    .line 79
    .local v3, "elevation":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 80
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getElevation()F

    move-result v3

    .line 82
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mCount:I

    if-ge v4, v6, :cond_4

    .line 83
    iget-object v6, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mIds:[I

    aget v6, v6, v4

    .line 84
    .local v6, "id":I
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v7

    .line 85
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 86
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    if-eqz v8, :cond_2

    .line 87
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_2
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    if-eqz v8, :cond_3

    .line 90
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v5, :cond_3

    .line 91
    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    add-float/2addr v8, v3

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationZ(F)V

    .line 82
    .end local v6    # "id":I
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "container":Landroidx/constraintlayout/widget/ConstraintLayout;
    .end local v2    # "visibility":I
    .end local v3    # "elevation":F
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method public onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V
    .locals 0
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 65
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 114
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    .line 115
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures()V

    .line 116
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 105
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures()V

    .line 107
    return-void
.end method
