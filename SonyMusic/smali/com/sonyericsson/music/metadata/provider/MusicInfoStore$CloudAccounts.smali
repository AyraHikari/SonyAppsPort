.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudAccounts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts$Columns;
    }
.end annotation


# static fields
.field static final ENCRYPTED_COLUMNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATH:Ljava/lang/String; = "cloud_account"

.field public static final SERVICE_ID_GOOGLE_DRIVE:I = 0x1

.field public static final STATE_AUTHORIZED:I = 0x3

.field public static final STATE_AUTHORIZE_FAILED:I = 0x2

.field public static final STATE_NOT_AUTHORIZED:I = 0x1

.field public static final STATE_NOT_FOUND:I = 0x0

.field public static final SYNC_STATE_FAILED:I = 0x3

.field public static final SYNC_STATE_IDLE:I = 0x0

.field public static final SYNC_STATE_ONGOING:I = 0x1

.field public static final SYNC_STATE_ONGOING_MANUAL:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 778
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->ENCRYPTED_COLUMNS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sonyericsson.music.musicinfo/cloud_account"

    .line 783
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "cloud_account"

    return-object v0
.end method
