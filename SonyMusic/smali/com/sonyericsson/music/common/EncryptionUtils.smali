.class public final Lcom/sonyericsson/music/common/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# static fields
.field private static final ENCRYPTION_KEY_BASE64:Ljava/lang/String;

.field protected static final ENCRYPTION_PREFIX:Ljava/lang/String; = "!#enc-v1:"

.field private static final sInstance:Lcom/sonyericsson/music/common/EncryptionUtils;


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/sonyericsson/music/common/ObfuscatorUtils;->deobfuscate([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/common/EncryptionUtils;->ENCRYPTION_KEY_BASE64:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/sonyericsson/music/common/EncryptionUtils;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/EncryptionUtils;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/EncryptionUtils;->sInstance:Lcom/sonyericsson/music/common/EncryptionUtils;

    return-void

    nop

    :array_0
    .array-data 4
        0x37000047
        0x5a4800
        0x686400
        0x56000070
        0x47000078
        0x614a00
        0x655a00
        0x32000066
        0x2f000063
        0x616100
        0x582f00
        0x4100006e    # 8.000105f
        0x32000043
        0x503000
        0x4d7200
        0x5a000068
        0x31000053
        0x786f00
        0x464300
        0x6d000035
        0x46
        0x4c00
        0x630000
        0x3d000000    # 0.03125f
        0x2c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/common/EncryptionUtils;->ENCRYPTION_KEY_BASE64:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 57
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 58
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DESKeySpec;->getKey()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "DES/ECB/PKCS5Padding"

    .line 61
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 64
    :catch_1
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    .line 69
    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    .line 70
    iput-object v1, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mKey:Ljavax/crypto/SecretKey;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cipher or key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 172
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/EncryptionUtils;->isEncrypted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "!#enc-v1:"

    const-string v2, ""

    .line 173
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 180
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    monitor-enter v0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :try_start_2
    iget-object v2, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 192
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_1

    .line 203
    :catch_1
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    goto :goto_2

    .line 199
    :catch_2
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    goto :goto_2

    .line 195
    :catch_3
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    :cond_0
    :goto_2
    return-object v1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "UTF-8"

    .line 134
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    monitor-enter v1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 139
    iget-object v2, p0, Lcom/sonyericsson/music/common/EncryptionUtils;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!#enc-v1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    :catch_0
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    goto :goto_0

    .line 148
    :catch_1
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    goto :goto_0

    .line 144
    :catch_2
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/music/common/EncryptionUtils;
    .locals 1

    .line 45
    sget-object v0, Lcom/sonyericsson/music/common/EncryptionUtils;->sInstance:Lcom/sonyericsson/music/common/EncryptionUtils;

    return-object v0
.end method


# virtual methods
.method public decryptIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/EncryptionUtils;->isEncrypted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/EncryptionUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    return-object p1
.end method

.method public encryptIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/EncryptionUtils;->isEncrypted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/EncryptionUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    :goto_0
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    return-object p1
.end method

.method public isEncrypted(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "!#enc-v1:"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
