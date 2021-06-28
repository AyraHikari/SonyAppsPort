.class public abstract Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub;
.super Landroid/os/Binder;
.source "IMediaPlayback.java"

# interfaces
.implements Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

.field static final TRANSACTION_enqueue:I = 0x11

.field static final TRANSACTION_enqueueTrack:I = 0x12

.field static final TRANSACTION_getPlaybackPosition:I = 0xc

.field static final TRANSACTION_getPlaybackState:I = 0x1b

.field static final TRANSACTION_loadPlayQueueIfEmpty:I = 0x5

.field static final TRANSACTION_moveTrack:I = 0x15

.field static final TRANSACTION_next:I = 0xa

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_openSmartPlaylist:I = 0x4

.field static final TRANSACTION_openWithMetadata:I = 0x3

.field static final TRANSACTION_openWithSourcePos:I = 0x2

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_pauseDelayed:I = 0x7

.field static final TRANSACTION_play:I = 0x8

.field static final TRANSACTION_prev:I = 0x9

.field static final TRANSACTION_removeTrack:I = 0x14

.field static final TRANSACTION_removeTracks:I = 0x13

.field static final TRANSACTION_setClearAudioEnabled:I = 0x18

.field static final TRANSACTION_setMediaRoute:I = 0x1d

.field static final TRANSACTION_setPersonalDataCollectionConsented:I = 0x19

.field static final TRANSACTION_setPlaybackPosition:I = 0xd

.field static final TRANSACTION_setQueuePosition:I = 0x10

.field static final TRANSACTION_setRepeatMode:I = 0x17

.field static final TRANSACTION_setShuffle:I = 0x16

.field static final TRANSACTION_setWifiAndMobileDataAccepted:I = 0x1a

.field static final TRANSACTION_shuffleNext:I = 0xb

.field static final TRANSACTION_startWinding:I = 0xe

.field static final TRANSACTION_stopWinding:I = 0xf

.field static final TRANSACTION_updateMediaRouteAndScan:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 279
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 290
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    instance-of v1, v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v1, :cond_1

    .line 292
    check-cast v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object v0

    .line 294
    :cond_1
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 1

    .line 1470
    sget-object v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->sDefaultImpl:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Z
    .locals 1

    .line 1463
    sget-object v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->sDefaultImpl:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1464
    sput-object p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->sDefaultImpl:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_13

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 636
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 620
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 623
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 629
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-interface {p0, v1, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 613
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->updateMediaRouteAndScan()V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 599
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    invoke-virtual {p1, p3, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 590
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 593
    :cond_2
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setWifiAndMobileDataAccepted(Z)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 581
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    .line 584
    :cond_3
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPersonalDataCollectionConsented(Z)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 572
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    .line 575
    :cond_4
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setClearAudioEnabled(Z)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 563
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 566
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setRepeatMode(I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 554
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    .line 557
    :cond_5
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setShuffle(Z)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 543
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 548
    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->moveTrack(II)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 534
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 537
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTrack(I)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 525
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 528
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTracks(Ljava/util/List;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 498
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 501
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    move-object v5, p1

    goto :goto_1

    :cond_6
    move-object v5, v1

    .line 507
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 508
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    move-object v6, v1

    goto :goto_2

    :cond_7
    move-object v6, v1

    .line 514
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    move-object v4, p0

    .line 519
    invoke-interface/range {v4 .. v9}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 480
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 483
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    .line 489
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_a

    const/4 v3, 0x1

    .line 492
    :cond_a
    invoke-interface {p0, v1, p1, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueue(Landroid/net/Uri;IZ)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 469
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_b

    const/4 v3, 0x1

    .line 474
    :cond_b
    invoke-interface {p0, p1, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setQueuePosition(IZ)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 462
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->stopWinding()V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 453
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v3, 0x1

    .line 456
    :cond_c
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->startWinding(Z)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 444
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 447
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPlaybackPosition(I)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 436
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackPosition()I

    move-result p1

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 429
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->shuffleNext()V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 422
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->next()V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 415
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->prev()V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 408
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->play()V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 399
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 402
    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pauseDelayed(J)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 392
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pause()V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 385
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->loadPlayQueueIfEmpty()V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 372
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d

    const/4 v3, 0x1

    .line 379
    :cond_d
    invoke-interface {p0, p1, p4, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openSmartPlaylist(IIZ)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 350
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 353
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    move-object v4, v1

    goto :goto_4

    :cond_e
    move-object v4, v1

    .line 359
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    .line 366
    invoke-interface/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 330
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 333
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    .line 339
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    const/4 v3, 0x1

    .line 343
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 344
    invoke-interface {p0, v1, p1, v3, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithSourcePos(Landroid/net/Uri;IZI)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 312
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    .line 315
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    .line 321
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_12

    const/4 v3, 0x1

    .line 324
    :cond_12
    invoke-interface {p0, v1, p1, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->open(Landroid/net/Uri;IZ)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 307
    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
