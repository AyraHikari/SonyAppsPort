.class Lcom/sonyericsson/music/library/store/StoreFragment$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/store/StoreFragment;->refreshLayout(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/store/StoreFragment;

.field final synthetic val$spanCount:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/store/StoreFragment;I)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$2;->this$0:Lcom/sonyericsson/music/library/store/StoreFragment;

    iput p2, p0, Lcom/sonyericsson/music/library/store/StoreFragment$2;->val$spanCount:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment$2;->val$spanCount:I

    :goto_0
    return v0
.end method
