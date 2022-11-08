.class Lcom/sonyericsson/music/MusicActivity$18;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity;->showToastOnUiThread(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$duration:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1783
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$18;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iput-object p2, p0, Lcom/sonyericsson/music/MusicActivity$18;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/sonyericsson/music/MusicActivity$18;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1786
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$18;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$18;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/music/MusicActivity$18;->val$duration:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
