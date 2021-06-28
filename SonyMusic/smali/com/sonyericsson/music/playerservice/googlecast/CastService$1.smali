.class Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "CastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$3;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$2;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;Lcom/google/android/gms/cast/ApplicationMetadata;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$100(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$1;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVolumeChanged()V
    .locals 0

    return-void
.end method
