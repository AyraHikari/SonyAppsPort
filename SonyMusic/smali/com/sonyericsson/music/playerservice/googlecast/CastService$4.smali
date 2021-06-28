.class Lcom/sonyericsson/music/playerservice/googlecast/CastService$4;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastService;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V
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

    .line 819
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-static {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->access$2900(Lcom/sonyericsson/music/playerservice/googlecast/CastService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->next()V

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$4;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/CastService;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/googlecast/CastService;->previous()V

    :goto_0
    return-void
.end method
