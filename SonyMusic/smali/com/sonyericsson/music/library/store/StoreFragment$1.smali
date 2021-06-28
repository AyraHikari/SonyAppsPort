.class Lcom/sonyericsson/music/library/store/StoreFragment$1;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/store/StoreFragment;->requestStoreResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/store/StoreFragment;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/sonyericsson/music/library/store/StoreFragment$1;->this$0:Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/music/library/store/StoreFragment$1;->this$0:Lcom/sonyericsson/music/library/store/StoreFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/library/store/StoreFragment;->access$000(Lcom/sonyericsson/music/library/store/StoreFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
