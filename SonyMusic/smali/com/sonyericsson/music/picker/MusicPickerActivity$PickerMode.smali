.class public final enum Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;
.super Ljava/lang/Enum;
.source "MusicPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/picker/MusicPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PickerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

.field public static final enum GET_CONTENT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

.field public static final enum SHORTCUT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 161
    new-instance v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    const-string v1, "SHORTCUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->SHORTCUT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    new-instance v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    const-string v1, "GET_CONTENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->GET_CONTENT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    const/4 v0, 0x2

    .line 160
    new-array v0, v0, [Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    sget-object v1, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->SHORTCUT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->GET_CONTENT:Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->$VALUES:[Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;
    .locals 1

    .line 160
    const-class v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;
    .locals 1

    .line 160
    sget-object v0, Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->$VALUES:[Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/picker/MusicPickerActivity$PickerMode;

    return-object v0
.end method
