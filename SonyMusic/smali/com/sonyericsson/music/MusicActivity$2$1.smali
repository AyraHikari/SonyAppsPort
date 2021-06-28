.class Lcom/sonyericsson/music/MusicActivity$2$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MusicActivity$2;->onStaticItemsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/MusicActivity$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity$2;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$2$1;->this$1:Lcom/sonyericsson/music/MusicActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$2$1;->this$1:Lcom/sonyericsson/music/MusicActivity$2;

    iget-object v0, v0, Lcom/sonyericsson/music/MusicActivity$2;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->tryToShowInitialPage()V

    return-void
.end method
