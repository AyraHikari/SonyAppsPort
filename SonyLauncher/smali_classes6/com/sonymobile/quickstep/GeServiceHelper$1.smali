.class Lcom/sonymobile/quickstep/GeServiceHelper$1;
.super Ljava/lang/Object;
.source "GeServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/quickstep/GeServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/quickstep/GeServiceHelper;


# direct methods
.method constructor <init>(Lcom/sonymobile/quickstep/GeServiceHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/quickstep/GeServiceHelper;

    .line 46
    iput-object p1, p0, Lcom/sonymobile/quickstep/GeServiceHelper$1;->this$0:Lcom/sonymobile/quickstep/GeServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 49
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper$1;->this$0:Lcom/sonymobile/quickstep/GeServiceHelper;

    invoke-static {p2}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/GeServiceHelper;->-$$Nest$fputmService(Lcom/sonymobile/quickstep/GeServiceHelper;Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;)V

    .line 50
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper$1;->this$0:Lcom/sonymobile/quickstep/GeServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/GeServiceHelper;->-$$Nest$fputmBindingService(Lcom/sonymobile/quickstep/GeServiceHelper;Z)V

    .line 51
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 55
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper$1;->this$0:Lcom/sonymobile/quickstep/GeServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/GeServiceHelper;->-$$Nest$fputmService(Lcom/sonymobile/quickstep/GeServiceHelper;Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;)V

    .line 56
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper$1;->this$0:Lcom/sonymobile/quickstep/GeServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/GeServiceHelper;->-$$Nest$fputmBindingService(Lcom/sonymobile/quickstep/GeServiceHelper;Z)V

    .line 57
    return-void
.end method
