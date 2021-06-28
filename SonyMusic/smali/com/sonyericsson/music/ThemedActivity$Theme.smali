.class public final enum Lcom/sonyericsson/music/ThemedActivity$Theme;
.super Ljava/lang/Enum;
.source "ThemedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ThemedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/ThemedActivity$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/ThemedActivity$Theme;

.field public static final enum DEFAULT:Lcom/sonyericsson/music/ThemedActivity$Theme;

.field public static final enum DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

.field public static final enum SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

.field public static final enum SETTINGS_FULLSCREEN_DIALOG:Lcom/sonyericsson/music/ThemedActivity$Theme;

.field public static final enum SETTINGS_NO_ACTIONBAR:Lcom/sonyericsson/music/ThemedActivity$Theme;


# instance fields
.field private final mDark:I

.field private final mLight:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Lcom/sonyericsson/music/ThemedActivity$Theme;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const v3, 0x7f110006

    const v4, 0x7f110007

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/ThemedActivity$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    .line 27
    new-instance v0, Lcom/sonyericsson/music/ThemedActivity$Theme;

    const-string v1, "DEFAULT_TRANSPARENT"

    const/4 v3, 0x1

    const v4, 0x7f11000f

    const v5, 0x7f110008

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonyericsson/music/ThemedActivity$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    .line 32
    new-instance v0, Lcom/sonyericsson/music/ThemedActivity$Theme;

    const-string v1, "SETTINGS"

    const/4 v4, 0x2

    const v5, 0x7f110009

    const v6, 0x7f11000a

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/sonyericsson/music/ThemedActivity$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    .line 37
    new-instance v0, Lcom/sonyericsson/music/ThemedActivity$Theme;

    const-string v1, "SETTINGS_FULLSCREEN_DIALOG"

    const/4 v5, 0x3

    const v6, 0x7f11000d

    const v7, 0x7f11000b

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/sonyericsson/music/ThemedActivity$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS_FULLSCREEN_DIALOG:Lcom/sonyericsson/music/ThemedActivity$Theme;

    .line 42
    new-instance v0, Lcom/sonyericsson/music/ThemedActivity$Theme;

    const-string v1, "SETTINGS_NO_ACTIONBAR"

    const/4 v6, 0x4

    const v7, 0x7f11000e

    const v8, 0x7f11000c

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/sonyericsson/music/ThemedActivity$Theme;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS_NO_ACTIONBAR:Lcom/sonyericsson/music/ThemedActivity$Theme;

    const/4 v0, 0x5

    .line 21
    new-array v0, v0, [Lcom/sonyericsson/music/ThemedActivity$Theme;

    sget-object v1, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS_FULLSCREEN_DIALOG:Lcom/sonyericsson/music/ThemedActivity$Theme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS_NO_ACTIONBAR:Lcom/sonyericsson/music/ThemedActivity$Theme;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->$VALUES:[Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/sonyericsson/music/ThemedActivity$Theme;->mLight:I

    .line 51
    iput p4, p0, Lcom/sonyericsson/music/ThemedActivity$Theme;->mDark:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/music/ThemedActivity$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->$VALUES:[Lcom/sonyericsson/music/ThemedActivity$Theme;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/ThemedActivity$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method


# virtual methods
.method get(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    iget p1, p0, Lcom/sonyericsson/music/ThemedActivity$Theme;->mDark:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sonyericsson/music/ThemedActivity$Theme;->mLight:I

    :goto_0
    return p1
.end method
