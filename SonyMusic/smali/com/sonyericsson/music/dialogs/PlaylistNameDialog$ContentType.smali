.class public final enum Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;
.super Ljava/lang/Enum;
.source "PlaylistNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

.field public static final enum ALBUM:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

.field public static final enum EMPTY:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

.field public static final enum PLAYLIST:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

.field public static final enum TRACK:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    new-instance v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->EMPTY:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    new-instance v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    const-string v1, "TRACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->TRACK:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    new-instance v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    const-string v1, "ALBUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->ALBUM:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    new-instance v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    const-string v1, "PLAYLIST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->PLAYLIST:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    sget-object v1, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->EMPTY:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->TRACK:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->ALBUM:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->PLAYLIST:Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->$VALUES:[Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;
    .locals 1

    .line 45
    const-class v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;
    .locals 1

    .line 45
    sget-object v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->$VALUES:[Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;

    return-object v0
.end method
