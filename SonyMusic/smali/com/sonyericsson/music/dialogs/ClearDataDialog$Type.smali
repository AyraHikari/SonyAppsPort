.class final enum Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;
.super Ljava/lang/Enum;
.source "ClearDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/dialogs/ClearDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

.field public static final enum ALBUM:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

.field public static final enum ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    new-instance v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    const-string v1, "ALBUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ALBUM:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    .line 58
    new-instance v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    const-string v1, "ARTIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    sget-object v1, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ALBUM:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->$VALUES:[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;
    .locals 1

    .line 56
    const-class v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;
    .locals 1

    .line 56
    sget-object v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->$VALUES:[Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    return-object v0
.end method
