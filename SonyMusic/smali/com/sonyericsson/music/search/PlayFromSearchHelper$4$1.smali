.class Lcom/sonyericsson/music/search/PlayFromSearchHelper$4$1;
.super Ljava/lang/Object;
.source "PlayFromSearchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4$1;->this$1:Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4$1;->this$1:Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;

    iget-object v0, v0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$4;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$400(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method
