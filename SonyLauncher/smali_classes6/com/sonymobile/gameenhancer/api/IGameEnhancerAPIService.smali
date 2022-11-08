.class public interface abstract Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;
.super Ljava/lang/Object;
.source "IGameEnhancerAPIService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;,
        Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.gameenhancer.api.IGameEnhancerAPIService"


# virtual methods
.method public abstract isGameApp(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isGameAppDynamically(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppAddedInGE(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppRemovedFromGE(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
