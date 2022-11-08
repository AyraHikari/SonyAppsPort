.class public Landroidx/slice/widget/SliceViewPolicy;
.super Ljava/lang/Object;
.source "SliceViewPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

.field private mMaxHeight:I

.field private mMaxSmallHeight:I

.field private mMode:I

.field private mScrollable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    .line 56
    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxSmallHeight:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .line 72
    iget v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    return v0
.end method

.method public getMaxSmallHeight()I
    .locals 1

    .line 79
    iget v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxSmallHeight:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 93
    iget v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    return v0
.end method

.method public setListener(Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    .line 65
    iput-object p1, p0, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    .line 66
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "max"    # I

    .line 100
    iget v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    if-eq p1, v0, :cond_0

    .line 101
    iput p1, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxHeight:I

    .line 102
    iget-object v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;->onMaxHeightChanged(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 1
    .param p1, "maxSmallHeight"    # I

    .line 112
    iget v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxSmallHeight:I

    if-eq v0, p1, :cond_0

    .line 113
    iput p1, p0, Landroidx/slice/widget/SliceViewPolicy;->mMaxSmallHeight:I

    .line 114
    iget-object v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1}, Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;->onMaxSmallChanged(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 136
    iget v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    if-eq v0, p1, :cond_0

    .line 137
    iput p1, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 138
    iget-object v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1}, Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;->onModeChanged(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .line 124
    iget-boolean v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    if-eq p1, v0, :cond_0

    .line 125
    iput-boolean p1, p0, Landroidx/slice/widget/SliceViewPolicy;->mScrollable:Z

    .line 126
    iget-object v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;->onScrollingChanged(Z)V

    .line 130
    :cond_0
    return-void
.end method
