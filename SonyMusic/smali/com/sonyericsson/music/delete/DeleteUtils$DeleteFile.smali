.class public Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;
.super Ljava/lang/Object;
.source "DeleteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/delete/DeleteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteFile"
.end annotation


# instance fields
.field public mDocumentFileUri:Landroid/net/Uri;

.field public final mId:I

.field public final mIsPrimaryStorage:Z

.field public final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput p1, p0, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mId:I

    .line 224
    iput-object p2, p0, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mPath:Ljava/lang/String;

    .line 225
    iput-boolean p3, p0, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mIsPrimaryStorage:Z

    return-void
.end method


# virtual methods
.method public setDocumentFileUri(Landroid/net/Uri;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeleteUtils$DeleteFile;->mDocumentFileUri:Landroid/net/Uri;

    return-void
.end method
