.class public final Lcom/android/launcher3/util/ContentWriter$CommitParams;
.super Ljava/lang/Object;
.source "ContentWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/ContentWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommitParams"
.end annotation


# instance fields
.field final mSelectionArgs:[Ljava/lang/String;

.field final mUri:Landroid/net/Uri;

.field final mWhere:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mUri:Landroid/net/Uri;

    .line 126
    iput-object p2, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mWhere:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/android/launcher3/util/ContentWriter$CommitParams;->mSelectionArgs:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static backupCommitParams(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter$CommitParams;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/android/launcher3/util/ContentWriter$CommitParams;

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->BACKUP_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/launcher3/util/ContentWriter$CommitParams;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
