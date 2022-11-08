.class public abstract Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .line 11499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11363
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11364
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11365
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11366
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 11367
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11370
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11372
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11471
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11472
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11474
    const/4 v2, 0x0

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11478
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11480
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11484
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11487
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11500
    if-eqz p1, :cond_0

    .line 11503
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11504
    return-void

    .line 11501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 11811
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11813
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11815
    :cond_0
    return-void
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2
    .param p1, "payload"    # Ljava/lang/Object;

    .line 11802
    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11803
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 11804
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11805
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 11806
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11808
    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 11798
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11799
    return-void
.end method

.method clearOldPosition()V
    .locals 1

    .line 11529
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11530
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11531
    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 11818
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11819
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11821
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11822
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 11745
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11746
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 11749
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11750
    return-void
.end method

.method doesTransientStatePreventRecycling()Z
    .locals 1

    .line 11956
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 11507
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 11508
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 11509
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11510
    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .locals 1

    .line 11682
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 11683
    const/4 v0, -0x1

    return v0

    .line 11685
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final getAdapterPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11594
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    return v0
.end method

.method public final getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 11697
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public final getBindingAdapterPosition()I
    .locals 3

    .line 11629
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 11630
    return v1

    .line 11632
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 11633
    return v1

    .line 11636
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 11637
    .local v0, "rvAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<+Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-nez v0, :cond_2

    .line 11638
    return v1

    .line 11640
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 11641
    .local v2, "globalPosition":I
    if-ne v2, v1, :cond_3

    .line 11642
    return v1

    .line 11644
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v1

    return v1
.end method

.method public final getItemId()J
    .locals 2

    .line 11722
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    .line 11729
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 11581
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    .line 11712
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11554
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11825
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11826
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11831
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 11828
    :cond_1
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 11834
    :cond_2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 11778
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 11790
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isAttachedToTransitionOverlay()Z
    .locals 2

    .line 11786
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isBound()Z
    .locals 2

    .line 11770
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInvalid()Z
    .locals 1

    .line 11762
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 11939
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11940
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11939
    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 11774
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isScrap()Z
    .locals 1

    .line 11733
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTmpDetached()Z
    .locals 1

    .line 11782
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUpdated()Z
    .locals 1

    .line 11960
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method needsUpdate()Z
    .locals 1

    .line 11766
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method offsetPosition(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .line 11513
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11514
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11516
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 11517
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11519
    :cond_1
    if-eqz p2, :cond_2

    .line 11520
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11522
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11523
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11524
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11526
    :cond_3
    return-void
.end method

.method onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 11858
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11859
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0

    .line 11861
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11862
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11864
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    .line 11866
    return-void
.end method

.method onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 11872
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    .line 11874
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11875
    return-void
.end method

.method resetInternal()V
    .locals 4

    .line 11839
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11840
    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11841
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11842
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11843
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11844
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11845
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11846
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11847
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 11848
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11849
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11850
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 11851
    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 11534
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11535
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11537
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 11794
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11795
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2
    .param p1, "recyclable"    # Z

    .line 11915
    const/4 v0, 0x1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11916
    if-gez v1, :cond_1

    .line 11917
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11924
    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 11925
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 11926
    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 11927
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11932
    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V
    .locals 0
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .line 11757
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11758
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11759
    return-void
.end method

.method shouldBeKeptAsChild()Z
    .locals 1

    .line 11948
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldIgnore()Z
    .locals 1

    .line 11540
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method stopIgnoring()V
    .locals 1

    .line 11753
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 11754
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 11880
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11881
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11882
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pLpos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11884
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11885
    const-string v2, " scrap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11886
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v3, :cond_1

    const-string v3, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v3, "[attachedScrap]"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11888
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11889
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, " unbound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11890
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, " update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11891
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11892
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, " ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11893
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, " tmpDetached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11894
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " not recyclable("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11895
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, " undefined adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11897
    :cond_a
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_b

    const-string v2, " no parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11898
    :cond_b
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11899
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method unScrap()V
    .locals 1

    .line 11737
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 11738
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    .line 11741
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
