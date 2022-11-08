.class public abstract Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;
.super Landroid/os/Binder;
.source "IGameEnhancerAPIService.java"

# interfaces
.implements Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_isGameApp:I = 0x1

.field static final TRANSACTION_isGameAppDynamically:I = 0x2

.field static final TRANSACTION_onAppAddedInGE:I = 0x3

.field static final TRANSACTION_onAppRemovedFromGE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.sonymobile.gameenhancer.api.IGameEnhancerAPIService"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "com.sonymobile.gameenhancer.api.IGameEnhancerAPIService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 84
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const-string v0, "com.sonymobile.gameenhancer.api.IGameEnhancerAPIService"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 100
    packed-switch p1, :pswitch_data_1

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 134
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;->onAppRemovedFromGE(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;->onAppAddedInGE(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    goto :goto_0

    .line 115
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;->isGameAppDynamically(Ljava/lang/String;)Z

    move-result v3

    .line 118
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService$Stub;->isGameApp(Ljava/lang/String;)Z

    move-result v3

    .line 108
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    nop

    .line 145
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
