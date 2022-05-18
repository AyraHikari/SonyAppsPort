.class public final enum Lcom/sonyericsson/music/MusicActivity$BackSource;
.super Ljava/lang/Enum;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/MusicActivity$BackSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/MusicActivity$BackSource;

.field public static final enum HOME:Lcom/sonyericsson/music/MusicActivity$BackSource;

.field public static final enum KEYCODE:Lcom/sonyericsson/music/MusicActivity$BackSource;

.field public static final enum SWIPE:Lcom/sonyericsson/music/MusicActivity$BackSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 315
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$BackSource;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/MusicActivity$BackSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/MusicActivity$BackSource;->HOME:Lcom/sonyericsson/music/MusicActivity$BackSource;

    .line 316
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$BackSource;

    const-string v1, "KEYCODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/MusicActivity$BackSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/MusicActivity$BackSource;->KEYCODE:Lcom/sonyericsson/music/MusicActivity$BackSource;

    .line 317
    new-instance v0, Lcom/sonyericsson/music/MusicActivity$BackSource;

    const-string v1, "SWIPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/MusicActivity$BackSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/MusicActivity$BackSource;->SWIPE:Lcom/sonyericsson/music/MusicActivity$BackSource;

    const/4 v0, 0x3

    .line 314
    new-array v0, v0, [Lcom/sonyericsson/music/MusicActivity$BackSource;

    sget-object v1, Lcom/sonyericsson/music/MusicActivity$BackSource;->HOME:Lcom/sonyericsson/music/MusicActivity$BackSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/MusicActivity$BackSource;->KEYCODE:Lcom/sonyericsson/music/MusicActivity$BackSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/MusicActivity$BackSource;->SWIPE:Lcom/sonyericsson/music/MusicActivity$BackSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/MusicActivity$BackSource;->$VALUES:[Lcom/sonyericsson/music/MusicActivity$BackSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/MusicActivity$BackSource;
    .locals 1

    .line 314
    const-class v0, Lcom/sonyericsson/music/MusicActivity$BackSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/MusicActivity$BackSource;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/MusicActivity$BackSource;
    .locals 1

    .line 314
    sget-object v0, Lcom/sonyericsson/music/MusicActivity$BackSource;->$VALUES:[Lcom/sonyericsson/music/MusicActivity$BackSource;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/MusicActivity$BackSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/MusicActivity$BackSource;

    return-object v0
.end method
