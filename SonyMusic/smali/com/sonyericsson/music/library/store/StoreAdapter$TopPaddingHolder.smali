.class Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopPaddingHolder"
.end annotation


# instance fields
.field private mTopPaddingView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 223
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09021c

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;->mTopPaddingView:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;->mTopPaddingView:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method bindViewHolder(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;->mTopPaddingView:Landroid/widget/FrameLayout;

    .line 229
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 230
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 231
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$TopPaddingHolder;->mTopPaddingView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
