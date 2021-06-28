.class Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;
.super Ljava/lang/Object;
.source "MusicInfoProviderCloudAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Selection"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private final mClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->mClause:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 226
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->mArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArg(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->mArgs:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 239
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getArgs()[Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->mArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getClause()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->mClause:Ljava/lang/String;

    return-object v0
.end method

.method public setArg(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount$Selection;->mArgs:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 246
    aput-object p2, v0, p1

    :cond_0
    return-void
.end method
