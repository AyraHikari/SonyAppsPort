.class Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private mArtistTextView:Landroid/widget/TextView;

.field private mHighResImage:Landroid/widget/ImageView;

.field mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPosition:I

.field private mStoreItemListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/sonyericsson/music/library/store/StoreAdapter$StoreItemListener;)V
    .locals 1

    .line 306
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 330
    new-instance v0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder$1;-><init>(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mOnClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f0900db

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/ui/SquareImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mImageView:Lcom/sonyericsson/music/ui/SquareImageView;

    const v0, 0x7f0901fc

    .line 308
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mArtistTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fd

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0900d0

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mHighResImage:Landroid/widget/ImageView;

    .line 311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mStoreItemListenerRef:Ljava/lang/ref/WeakReference;

    .line 312
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mStoreItemListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)I
    .locals 0

    .line 289
    iget p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mPosition:I

    return p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;)Lcom/sonyericsson/music/library/store/StoreResponse;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    return-object p0
.end method


# virtual methods
.method bindViewHolder(ILcom/sonyericsson/music/library/store/StoreResponse;Z)V
    .locals 1

    .line 316
    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    .line 317
    iput p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mPosition:I

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mHighResImage:Landroid/widget/ImageView;

    .line 319
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/library/store/StoreResponse;->isHighResolution(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/music/library/store/StoreResponse;->getArtist(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 324
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/library/store/StoreResponse;->getArtist(I)Ljava/lang/String;

    move-result-object p2

    .line 326
    :goto_1
    iget-object p3, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mTitleTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$ItemViewHolder;->mStoreResponse:Lcom/sonyericsson/music/library/store/StoreResponse;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/music/library/store/StoreResponse;->getTitle(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
