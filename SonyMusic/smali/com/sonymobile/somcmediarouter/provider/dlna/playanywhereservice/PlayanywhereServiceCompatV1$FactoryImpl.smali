.class Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$FactoryImpl;
.super Ljava/lang/Object;
.source "PlayanywhereServiceCompatV1.java"

# interfaces
.implements Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompat$Factory;


# instance fields
.field private mPaService:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayanywhereServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.playanywhere.IPlayAnywhereSinkController"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonymobile.playanywhere"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public isConnectPlayanywhere()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$FactoryImpl;->mPaService:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;->getOutputSink()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;->getSinkConnectionMethods(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isConnectPlayanywhere(Landroid/os/IBinder;)Z
    .locals 0

    .line 41
    invoke-static {p1}, Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$FactoryImpl;->mPaService:Lcom/sonymobile/playanywhere/IPlayAnywhereSinkController;

    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/playanywhereservice/PlayanywhereServiceCompatV1$FactoryImpl;->isConnectPlayanywhere()Z

    move-result p1

    return p1
.end method
