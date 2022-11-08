.class Lcom/sonyericsson/music/MusicActivity$14$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/MusicActivity$14;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity$14;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$14$1;->this$1:Lcom/sonyericsson/music/MusicActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$14$1;->this$1:Lcom/sonyericsson/music/MusicActivity$14;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$14;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$400(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method
