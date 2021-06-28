.class Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->onApplicationStatusChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$1;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;

    iget-object v0, v0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    .line 67
    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$000(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    :cond_0
    return-void
.end method
