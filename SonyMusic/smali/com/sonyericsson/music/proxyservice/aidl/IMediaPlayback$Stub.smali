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
.field static final TRANSACTION_enqueue:I = 0x11

.field static final TRANSACTION_enqueueTrack:I = 0x12

.field static final TRANSACTION_getPlaybackPosition:I = 0xc

.field static final TRANSACTION_getPlaybackState:I = 0x1d

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

.field static final TRANSACTION_setMediaRoute:I = 0x1f

.field static final TRANSACTION_setPersonalDataCollectionConsented:I = 0x19

.field static final TRANSACTION_setPlaybackPosition:I = 0xd

.field static final TRANSACTION_setQueuePosition:I = 0x10

.field static final TRANSACTION_setRepeatMode:I = 0x17

.field static final TRANSACTION_setShowSyncUserNoticeDialog:I = 0x1c

.field static final TRANSACTION_setShuffle:I = 0x16

.field static final TRANSACTION_setWifiAndMobileDataAccepted:I = 0x1a

.field static final TRANSACTION_shouldShowSyncUserNoticeDialog:I = 0x1b

.field static final TRANSACTION_shuffleNext:I = 0xb

.field static final TRANSACTION_startWinding:I = 0xe

.field static final TRANSACTION_stopWinding:I = 0xf

.field static final TRANSACTION_updateMediaRouteAndScan:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 284
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sonyericsson.music.proxyservice.aidl.IMediaPlayback"

    .line 285
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

    .line 296
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    instance-of v1, v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-eqz v1, :cond_1

    .line 298
    check-cast v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object v0

    .line 300
    :cond_1
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 1

    .line 1605
    sget-object v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->sDefaultImpl:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;)Z
    .locals 1

    .line 1595
    sget-object v0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->sDefaultImpl:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1599
    sput-object p0, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback$Stub$Proxy;->sDefaultImpl:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1596
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 v1, 0x1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_14

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 662
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 646
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 649
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 655
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 656
    invoke-interface {p0, v2, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 639
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->updateMediaRouteAndScan()V

    .line 641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 625
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 629
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    invoke-virtual {p1, p3, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 616
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 619
    :cond_2
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setShowSyncUserNoticeDialog(Z)V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 608
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->shouldShowSyncUserNoticeDialog()Z

    move-result p1

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 599
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    .line 602
    :cond_3
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setWifiAndMobileDataAccepted(Z)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 590
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    .line 593
    :cond_4
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPersonalDataCollectionConsented(Z)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 581
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    .line 584
    :cond_5
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setClearAudioEnabled(Z)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 572
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 575
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setRepeatMode(I)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 563
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    .line 566
    :cond_6
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setShuffle(Z)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 552
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 557
    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->moveTrack(II)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 543
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 546
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTrack(I)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 534
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 537
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->removeTracks(Ljava/util/List;)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 507
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 510
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    move-object v5, p1

    goto :goto_1

    :cond_7
    move-object v5, v2

    .line 516
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 517
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    move-object v6, v2

    goto :goto_2

    :cond_8
    move-object v6, v2

    .line 523
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    move-object v4, p0

    .line 528
    invoke-interface/range {v4 .. v9}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;IIZ)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 489
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 492
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    .line 498
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_b

    const/4 v3, 0x1

    .line 501
    :cond_b
    invoke-interface {p0, v2, p1, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->enqueue(Landroid/net/Uri;IZ)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 478
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_c

    const/4 v3, 0x1

    .line 483
    :cond_c
    invoke-interface {p0, p1, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setQueuePosition(IZ)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 471
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->stopWinding()V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 462
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v3, 0x1

    .line 465
    :cond_d
    invoke-interface {p0, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->startWinding(Z)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 453
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 456
    invoke-interface {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->setPlaybackPosition(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 445
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->getPlaybackPosition()I

    move-result p1

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 438
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->shuffleNext()V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 431
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->next()V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 424
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->prev()V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 417
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->play()V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 408
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 411
    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pauseDelayed(J)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 401
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->pause()V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 394
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-interface {p0}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->loadPlayQueueIfEmpty()V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 381
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_e

    const/4 v3, 0x1

    .line 388
    :cond_e
    invoke-interface {p0, p1, p4, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openSmartPlaylist(IIZ)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 359
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 362
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    move-object v4, v2

    goto :goto_4

    :cond_f
    move-object v4, v2

    .line 368
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    .line 375
    invoke-interface/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithMetadata(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 339
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 342
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    .line 348
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_11

    const/4 v3, 0x1

    .line 352
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 353
    invoke-interface {p0, v2, p1, v3, p2}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->openWithSourcePos(Landroid/net/Uri;IZI)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 321
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    .line 324
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    .line 330
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_13

    const/4 v3, 0x1

    .line 333
    :cond_13
    invoke-interface {p0, v2, p1, v3}, Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;->open(Landroid/net/Uri;IZ)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 313
    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
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
