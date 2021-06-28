.class Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;
.super Ljava/lang/Object;
.source "GoogleProfile.java"

# interfaces
.implements Lcom/sonyericsson/music/common/SettingsProviderWrapper$Encrypter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/authentication/GoogleProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleDriveEncrypter"
.end annotation


# instance fields
.field private final mEncryptedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;->mEncryptedKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;->mEncryptedKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-static {}, Lcom/sonyericsson/music/common/EncryptionUtils;->getInstance()Lcom/sonyericsson/music/common/EncryptionUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/EncryptionUtils;->decryptIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleProfile$GoogleDriveEncrypter;->mEncryptedKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Lcom/sonyericsson/music/common/EncryptionUtils;->getInstance()Lcom/sonyericsson/music/common/EncryptionUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/EncryptionUtils;->encryptIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method
