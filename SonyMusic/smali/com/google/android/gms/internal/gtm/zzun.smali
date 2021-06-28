.class public final Lcom/google/android/gms/internal/gtm/zzun;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private zzawf:I

.field private zzawg:I

.field private zzawh:I

.field private zzawl:I

.field private zzawn:I

.field private zzawo:I

.field private final zzbgu:I

.field private final zzbgv:I

.field private zzbgw:I

.field private zzbgx:I

.field private zzbgy:Lcom/google/android/gms/internal/gtm/zzqe;


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 114
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawo:I

    const/16 v0, 0x40

    .line 115
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawg:I

    const/high16 v0, 0x4000000

    .line 116
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawh:I

    .line 117
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->buffer:[B

    .line 118
    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgu:I

    add-int/2addr p3, p2

    .line 119
    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgv:I

    .line 120
    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    return-void
.end method

.method private final zzas(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 183
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawo:I

    if-gt v1, v2, :cond_1

    .line 186
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    .line 187
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsa()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 184
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzas(I)V

    .line 185
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsa()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object p1

    throw p1

    .line 182
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsb()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object p1

    throw p1
.end method

.method public static zzj([BII)Lcom/google/android/gms/internal/gtm/zzun;
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzun;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzun;-><init>([BII)V

    return-object p1
.end method

.method public static zzk([B)Lcom/google/android/gms/internal/gtm/zzun;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzj([BII)Lcom/google/android/gms/internal/gtm/zzun;

    move-result-object p0

    return-object p0
.end method

.method private final zzoe()V
    .locals 2

    .line 148
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawl:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    .line 149
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    .line 150
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawo:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 151
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawl:I

    .line 152
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawl:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawl:I

    return-void
.end method

.method private final zzof()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    aget-byte v0, v1, v0

    return v0

    .line 179
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsa()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object v0

    throw v0
.end method

.method private final zzru()Lcom/google/android/gms/internal/gtm/zzqe;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgy:Lcom/google/android/gms/internal/gtm/zzqe;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgu:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgv:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzqe;->zzd([BII)Lcom/google/android/gms/internal/gtm/zzqe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgy:Lcom/google/android/gms/internal/gtm/zzqe;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgy:Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqe;->zznz()I

    move-result v0

    .line 125
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgu:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgy:Lcom/google/android/gms/internal/gtm/zzqe;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzas(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgy:Lcom/google/android/gms/internal/gtm/zzqe;

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawg:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zzap(I)I

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgy:Lcom/google/android/gms/internal/gtm/zzqe;

    return-object v0

    .line 127
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s"

    .line 129
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final getPosition()I
    .locals 2

    .line 162
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgu:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    if-ltz v0, :cond_1

    .line 53
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzun;->buffer:[B

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzuu;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 56
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    return-object v1

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsa()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object v0

    throw v0

    .line 52
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsb()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object v0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzsu;)Lcom/google/android/gms/internal/gtm/zzrc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzrc<",
            "TT;*>;>(",
            "Lcom/google/android/gms/internal/gtm/zzsu<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzru()Lcom/google/android/gms/internal/gtm/zzqe;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzqp;->zzor()Lcom/google/android/gms/internal/gtm/zzqp;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzqe;->zza(Lcom/google/android/gms/internal/gtm/zzsu;Lcom/google/android/gms/internal/gtm/zzqp;)Lcom/google/android/gms/internal/gtm/zzsk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 135
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawn:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzao(I)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzrk; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 138
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuv;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzuv;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzuw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    .line 68
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawg:I

    if-ge v1, v2, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzaq(I)I

    move-result v0

    .line 71
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    .line 72
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzuw;->zza(Lcom/google/android/gms/internal/gtm/zzun;)Lcom/google/android/gms/internal/gtm/zzuw;

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzan(I)V

    .line 74
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzar(I)V

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsd()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object p1

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzuw;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawg:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 60
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    .line 61
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzuw;->zza(Lcom/google/android/gms/internal/gtm/zzun;)Lcom/google/android/gms/internal/gtm/zzuw;

    shl-int/lit8 p1, p2, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzan(I)V

    .line 65
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawf:I

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsd()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object p1

    throw p1
.end method

.method public final zzan(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzuv;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawn:I

    if-ne v0, p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzuv;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuv;-><init>(Ljava/lang/String;)V

    .line 14
    throw p1
.end method

.method public final zzao(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzuv;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuv;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoc()I

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 35
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzao(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzan(I)V

    return v1

    .line 32
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzas(I)V

    return v1

    .line 23
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    return v1

    .line 20
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzaq(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzuv;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 141
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    add-int/2addr p1, v0

    .line 142
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawo:I

    if-gt p1, v0, :cond_0

    .line 145
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawo:I

    .line 146
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoe()V

    return v0

    .line 144
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsa()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object p1

    throw p1

    .line 140
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsb()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object p1

    throw p1
.end method

.method public final zzar(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawo:I

    .line 156
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoe()V

    return-void
.end method

.method public final zzbz(I)V
    .locals 1

    .line 169
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawn:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzu(II)V

    return-void
.end method

.method public final zzni()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgw:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawn:I

    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawn:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawn:I

    if-eqz v0, :cond_1

    return v0

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuv;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzuv;-><init>(Ljava/lang/String;)V

    .line 10
    throw v0
.end method

.method public final zzno()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzoa()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzoa()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsc()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    return v0
.end method

.method public final zzob()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuv;->zzsc()Lcom/google/android/gms/internal/gtm/zzuv;

    move-result-object v0

    throw v0

    return-void
.end method

.method public final zzoc()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v0

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v1

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v2

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzof()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final zzrv()I
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawo:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 160
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzt(II)[B
    .locals 3

    if-nez p2, :cond_0

    .line 164
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhw:[B

    return-object p1

    .line 165
    :cond_0
    new-array v0, p2, [B

    .line 166
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgu:I

    add-int/2addr v1, p1

    .line 167
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzun;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method final zzu(II)V
    .locals 3

    .line 171
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgu:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 175
    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzbgx:I

    .line 176
    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzun;->zzawn:I

    return-void

    .line 174
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Bad position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 172
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond current "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
