.class Lcom/sonyericsson/music/MusicActivity$3$2$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/music/MusicActivity$3$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity$3$2;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$3$2$1;->this$2:Lcom/sonyericsson/music/MusicActivity$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$3$2$1;->this$2:Lcom/sonyericsson/music/MusicActivity$3$2;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$3$2;->this$1:Lcom/sonyericsson/music/MusicActivity$3;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$3;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/music/MusicActivity;->mAllowSelectRoute:Z

    .line 444
    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$400(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method
