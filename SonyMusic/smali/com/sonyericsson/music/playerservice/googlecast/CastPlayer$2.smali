.class Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;
.super Ljava/lang/Object;
.source "CastPlayer.java"

# interfaces
.implements Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$OnAppConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppDisconnected()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$2;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReconnectChannel()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastPlayer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
