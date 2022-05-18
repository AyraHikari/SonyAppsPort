.class final Lcom/sonyericsson/music/common/MusicUtils$2;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/MusicUtils;->showToastOnUiThread(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$labelId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/sonyericsson/music/common/MusicUtils$2;->val$appContext:Landroid/content/Context;

    iput p2, p0, Lcom/sonyericsson/music/common/MusicUtils$2;->val$labelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/music/common/MusicUtils$2;->val$appContext:Landroid/content/Context;

    iget v1, p0, Lcom/sonyericsson/music/common/MusicUtils$2;->val$labelId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void
.end method
