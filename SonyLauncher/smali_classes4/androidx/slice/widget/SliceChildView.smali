.class public abstract Landroidx/slice/widget/SliceChildView;
.super Landroid/widget/FrameLayout;
.source "SliceChildView.java"


# instance fields
.field protected mInsetBottom:I

.field protected mInsetEnd:I

.field protected mInsetStart:I

.field protected mInsetTop:I

.field protected mLastUpdated:J

.field protected mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field protected mMode:I

.field protected mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field protected mRowStyle:Landroidx/slice/widget/RowStyle;

.field protected mShowLastUpdated:Z

.field protected mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field protected mTintColor:I

.field protected mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 101
    return-void
.end method


# virtual methods
.method public getHiddenItemCount()I
    .locals 1

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getLoadingActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public abstract resetView()V
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 0
    .param p1, "item"    # Landroidx/slice/SliceItem;

    .line 204
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0
    .param p1, "allowTwoLines"    # Z

    .line 220
    return-void
.end method

.method public setInsets(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 123
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    .line 124
    iput p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    .line 125
    iput p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    .line 126
    iput p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 127
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 0
    .param p1, "lastUpdated"    # J

    .line 179
    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    .line 180
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "loadingActions":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceItem;>;"
    return-void
.end method

.method public setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroidx/slice/widget/SliceViewPolicy;

    .line 247
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 248
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0
    .param p1, "showLastUpdated"    # Z

    .line 170
    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    .line 171
    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 187
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 188
    return-void
.end method

.method public setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 195
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 196
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 0
    .param p1, "content"    # Landroidx/slice/widget/ListContent;

    .line 115
    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1, "slice"    # Landroidx/slice/widget/SliceContent;
    .param p2, "isHeader"    # Z
    .param p3, "rowIndex"    # I
    .param p4, "rowCount"    # I
    .param p5, "observer"    # Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 135
    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 0
    .param p1, "styles"    # Landroidx/slice/widget/SliceStyle;
    .param p2, "rowStyle"    # Landroidx/slice/widget/RowStyle;

    .line 237
    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 238
    iput-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 239
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1, "tintColor"    # I

    .line 161
    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    .line 162
    return-void
.end method
