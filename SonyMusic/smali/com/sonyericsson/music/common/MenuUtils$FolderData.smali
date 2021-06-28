.class public Lcom/sonyericsson/music/common/MenuUtils$FolderData;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderData"
.end annotation


# instance fields
.field private final mFolderArtUri:Landroid/net/Uri;

.field private final mFolderName:Ljava/lang/String;

.field private final mId:I

.field private final mPathDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p1, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mId:I

    .line 272
    iput-object p2, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mFolderName:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mPathDisplayName:Ljava/lang/String;

    .line 274
    iput-object p4, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mFolderArtUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getFolderArtUri()Landroid/net/Uri;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mFolderArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mId:I

    return v0
.end method

.method public getPathDisplayName()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;->mPathDisplayName:Ljava/lang/String;

    return-object v0
.end method
