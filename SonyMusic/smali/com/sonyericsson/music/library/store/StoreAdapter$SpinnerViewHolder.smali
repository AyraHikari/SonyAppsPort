.class Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/store/StoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpinnerViewHolder"
.end annotation


# instance fields
.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mStoreAdapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/library/store/StoreAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorePageContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;Lcom/sonyericsson/music/library/store/StoreAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePageContent;",
            ">;",
            "Lcom/sonyericsson/music/library/store/StoreAdapter;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 265
    new-instance v0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder$1;-><init>(Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 247
    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mStorePageContentList:Ljava/util/List;

    .line 248
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mStoreAdapterRef:Ljava/lang/ref/WeakReference;

    const p2, 0x7f0901e5

    .line 249
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mSpinner:Landroid/widget/Spinner;

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 251
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mStorePageContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/store/StorePageContent;

    .line 254
    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/StorePageContent;->getTitleResId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 260
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 261
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mSpinner:Landroid/widget/Spinner;

    invoke-static {p3}, Lcom/sonyericsson/music/library/store/StoreAdapter;->access$100(Lcom/sonyericsson/music/library/store/StoreAdapter;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mSpinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mStoreAdapterRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;)Ljava/util/List;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/sonyericsson/music/library/store/StoreAdapter$SpinnerViewHolder;->mStorePageContentList:Ljava/util/List;

    return-object p0
.end method
