.class public final enum Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;
.super Ljava/lang/Enum;
.source "GoogleSignInSignOutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

.field public static final enum DRIVE_CARD_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

.field public static final enum DRIVE_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

.field public static final enum SETTINGS_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

.field public static final enum SETTINGS_SIGN_OUT:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;


# instance fields
.field private final mIntentAction:Ljava/lang/String;

.field private final mIsSignOutAction:Z

.field private final mLaunchDriveFragmentAfterSignIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 46
    new-instance v6, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const-string v1, "DRIVE_SIGN_IN"

    const-string v3, "com.sonyericsson.music.authentication.DRIVE_SIGN_IN"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v6, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->DRIVE_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    .line 49
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const-string v8, "DRIVE_CARD_SIGN_IN"

    const-string v10, "com.sonyericsson.music.authentication.DRIVE_CARD_SIGN_IN"

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->DRIVE_CARD_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    .line 52
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const-string v2, "SETTINGS_SIGN_IN"

    const-string v4, "com.sonyericsson.music.authentication.SETTINGS_SIGN_IN"

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->SETTINGS_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    .line 55
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const-string v8, "SETTINGS_SIGN_OUT"

    const-string v10, "com.sonyericsson.music.authentication.SETTINGS_SIGN_OUT"

    const/4 v9, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    sput-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->SETTINGS_SIGN_OUT:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const/4 v0, 0x4

    .line 44
    new-array v0, v0, [Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    sget-object v1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->DRIVE_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->DRIVE_CARD_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->SETTINGS_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->SETTINGS_SIGN_OUT:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->$VALUES:[Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->mIntentAction:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->mLaunchDriveFragmentAfterSignIn:Z

    .line 64
    iput-boolean p5, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->mIsSignOutAction:Z

    return-void
.end method

.method public static getAction(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;
    .locals 5

    .line 80
    invoke-static {}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->values()[Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3}, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->getIntentAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;
    .locals 1

    .line 44
    const-class v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;
    .locals 1

    .line 44
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->$VALUES:[Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    return-object v0
.end method


# virtual methods
.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public isLaunchDriveFragmentAfterSignIn()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->mLaunchDriveFragmentAfterSignIn:Z

    return v0
.end method

.method public isSignOutAction()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->mIsSignOutAction:Z

    return v0
.end method
