.class public final Lcom/sonyericsson/music/common/ContextMenuBuilder;
.super Ljava/lang/Object;
.source "ContextMenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/ContextMenuBuilder$PopupMenuWrapper;,
        Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenuWrapper;,
        Lcom/sonyericsson/music/common/ContextMenuBuilder$ContextMenuWrapper;,
        Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;,
        Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;
    }
.end annotation


# instance fields
.field private mAddTo:Z

.field private mAddToFavorites:Z

.field private mDelete:Z

.field private mDeleteFromStorage:Z

.field private mDequeue:Z

.field private mEditMusicInfo:Z

.field private mEditMusicInfoAlbum:Z

.field private mEditMusicInfoArtist:Z

.field private mEditPlaylist:Z

.field private mEnabled:Z

.field private mEnqueue:Z

.field private mGoToAlbum:Z

.field private mGoToArtist:Z

.field private mGroupId:I

.field private mOpen:Z

.field private mOpenTextResourceId:I

.field private mRemoveFromFavorites:Z

.field private mRemoveFromPlaylist:Z

.field private mRenamePlaylist:Z

.field private mSend:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnqueue:Z

    .line 101
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mAddTo:Z

    .line 103
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRemoveFromPlaylist:Z

    .line 105
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mAddToFavorites:Z

    .line 107
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRemoveFromFavorites:Z

    .line 109
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mSend:Z

    .line 111
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDeleteFromStorage:Z

    .line 113
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDelete:Z

    .line 115
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditPlaylist:Z

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRenamePlaylist:Z

    .line 119
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDequeue:Z

    .line 121
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGoToArtist:Z

    .line 123
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGoToAlbum:Z

    .line 125
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mOpen:Z

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    .line 129
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfo:Z

    .line 131
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfoAlbum:Z

    .line 133
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfoArtist:Z

    .line 135
    iput v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    return-void
.end method

.method private build(Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;)V
    .locals 13

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->setHeaderTitle(Ljava/lang/String;)V

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mOpen:Z

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mOpenTextResourceId:I

    if-eqz v4, :cond_1

    .line 401
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x12

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 405
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mAddTo:Z

    if-eqz v0, :cond_2

    .line 406
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/4 v3, 0x7

    const v4, 0x7f100120

    const v5, 0x7f080175

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 409
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDequeue:Z

    if-eqz v0, :cond_3

    .line 410
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0xe

    const v4, 0x7f1001dd

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 413
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnqueue:Z

    if-eqz v0, :cond_4

    .line 414
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0xc

    const v4, 0x7f10018d

    const v5, 0x7f080179

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 418
    iget v8, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v9, 0x15

    const v10, 0x7f100183

    const v11, 0x7f080179

    iget-boolean v12, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v7, p1

    invoke-interface/range {v7 .. v12}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 422
    :cond_4
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRemoveFromPlaylist:Z

    if-eqz v0, :cond_5

    .line 423
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0xb

    const v4, 0x7f1001d4

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 426
    :cond_5
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mAddToFavorites:Z

    if-eqz v0, :cond_6

    .line 427
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0xf

    const v4, 0x7f100256

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 430
    :cond_6
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRemoveFromFavorites:Z

    if-eqz v0, :cond_7

    .line 431
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x13

    const v4, 0x7f100258

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 434
    :cond_7
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mSend:Z

    if-eqz v0, :cond_8

    .line 435
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0xa

    const v4, 0x7f10020d

    const v5, 0x7f08017d

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 438
    :cond_8
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditPlaylist:Z

    if-eqz v0, :cond_9

    .line 439
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x9

    const v4, 0x7f1001c7

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 442
    :cond_9
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRenamePlaylist:Z

    if-eqz v0, :cond_a

    .line 443
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0xd

    const v4, 0x7f1001d5

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 446
    :cond_a
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDeleteFromStorage:Z

    if-eqz v0, :cond_b

    .line 447
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x8

    const v4, 0x7f100190

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 450
    :cond_b
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDelete:Z

    if-eqz v0, :cond_c

    .line 451
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x16

    const v4, 0x7f10023a

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 454
    :cond_c
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGoToArtist:Z

    if-eqz v0, :cond_d

    .line 455
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x10

    const v4, 0x7f10012d

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 458
    :cond_d
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGoToAlbum:Z

    if-eqz v0, :cond_e

    .line 459
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x11

    const v4, 0x7f100125

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 462
    :cond_e
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfo:Z

    if-eqz v0, :cond_f

    .line 463
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x14

    const v4, 0x7f100085

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 466
    :cond_f
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfoAlbum:Z

    if-eqz v0, :cond_10

    .line 467
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x14

    const v4, 0x7f100083

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    .line 470
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfoArtist:Z

    if-eqz v0, :cond_11

    .line 471
    iget v2, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    const/16 v3, 0x14

    const v4, 0x7f100084

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnabled:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;->add(IIIIZ)V

    :cond_11
    return-void
.end method


# virtual methods
.method public build(Landroid/view/ContextMenu;)V
    .locals 1

    .line 376
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ContextMenuWrapper;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder$ContextMenuWrapper;-><init>(Landroid/view/ContextMenu;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;)V

    return-void
.end method

.method public build(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 384
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder$PopupMenuWrapper;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder$PopupMenuWrapper;-><init>(Landroid/widget/PopupMenu;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;)V

    return-void
.end method

.method public build(Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;)V
    .locals 1

    .line 380
    new-instance v0, Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenuWrapper;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenuWrapper;-><init>(Lcom/sonyericsson/music/common/ContextMenuBuilder$ActionMenu;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Lcom/sonyericsson/music/common/ContextMenuBuilder$MenuWrapper;)V

    return-void
.end method

.method public setAddTo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mAddTo:Z

    return-object p0
.end method

.method public setAddToFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mAddToFavorites:Z

    return-object p0
.end method

.method public setDelete(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDelete:Z

    return-object p0
.end method

.method public setDeleteFromStorage(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDeleteFromStorage:Z

    return-object p0
.end method

.method public setDequeue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mDequeue:Z

    return-object p0
.end method

.method public setEditMusicInfo(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 349
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfo:Z

    return-object p0
.end method

.method public setEditMusicInfoAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfoAlbum:Z

    return-object p0
.end method

.method public setEditMusicInfoArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 371
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditMusicInfoArtist:Z

    return-object p0
.end method

.method public setEditPlaylist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEditPlaylist:Z

    return-object p0
.end method

.method public setEnqueue(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mEnqueue:Z

    return-object p0
.end method

.method public setGoToAlbum(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGoToAlbum:Z

    return-object p0
.end method

.method public setGoToArtist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGoToArtist:Z

    return-object p0
.end method

.method public setGroupId(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 338
    iput p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mGroupId:I

    return-object p0
.end method

.method public setOpenOption(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mOpen:Z

    return-object p0
.end method

.method public setOpenText(I)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 166
    iput p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mOpenTextResourceId:I

    return-object p0
.end method

.method public setRemoveFromFavorites(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRemoveFromFavorites:Z

    return-object p0
.end method

.method public setRemoveFromPlaylist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRemoveFromPlaylist:Z

    return-object p0
.end method

.method public setRenamePlaylist(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mRenamePlaylist:Z

    return-object p0
.end method

.method public setSend(Z)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mSend:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/sonyericsson/music/common/ContextMenuBuilder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/music/common/ContextMenuBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
