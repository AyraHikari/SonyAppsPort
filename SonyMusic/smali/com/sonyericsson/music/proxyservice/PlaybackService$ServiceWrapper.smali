.class Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;
.super Ljava/lang/Object;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper$Factory;
    }
.end annotation


# instance fields
.field private mService:Landroid/app/Service;


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .locals 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 610
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->mService:Landroid/app/Service;

    return-void

    .line 608
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "service not allowed to be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method startForeground(ILandroid/app/Notification;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method startService(Landroid/content/Intent;)V
    .locals 2

    .line 614
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method stopForeground(Z)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method stopSelf()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method stopSelf(I)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/PlaybackService$ServiceWrapper;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    return-void
.end method
