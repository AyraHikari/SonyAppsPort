.class final enum Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;
.super Ljava/lang/Enum;
.source "FirebaseRemoteConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConfigFetchResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

.field public static final enum CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

.field public static final enum CONFIG_FETCH_IN_PROGRESS:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

.field public static final enum CONFIG_FETCH_NONE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    const-string v1, "CONFIG_FETCH_COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 76
    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    const-string v1, "CONFIG_FETCH_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_IN_PROGRESS:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    .line 79
    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    const-string v1, "CONFIG_FETCH_NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_NONE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    const/4 v0, 0x3

    .line 63
    new-array v0, v0, [Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_COMPLETE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_IN_PROGRESS:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->CONFIG_FETCH_NONE:Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->$VALUES:[Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;
    .locals 1

    .line 63
    const-class v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;
    .locals 1

    .line 63
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->$VALUES:[Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/datacollection/firebase/FirebaseRemoteConfigProvider$ConfigFetchResult;

    return-object v0
.end method
