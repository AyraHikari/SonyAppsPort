.class public final Lcom/google/android/gms/internal/wearable/zzk;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzgr:I

.field private final zzgs:I

.field private zzgt:I

.field private zzgu:I

.field private zzgv:I

.field private zzgw:I

.field private zzgx:I

.field private zzgy:I

.field private zzgz:I

.field private zzha:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 116
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgx:I

    const/16 v0, 0x40

    .line 117
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgz:I

    const/high16 v0, 0x4000000

    .line 118
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzha:I

    .line 119
    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzk;->buffer:[B

    .line 120
    iput p2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgr:I

    add-int/2addr p3, p2

    .line 121
    iput p3, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    iput p3, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgs:I

    .line 122
    iput p2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    return-void
.end method

.method public static zza([BII)Lcom/google/android/gms/internal/wearable/zzk;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzk;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/wearable/zzk;-><init>([BII)V

    return-object p1
.end method

.method private final zzh(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 168
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgx:I

    if-gt v1, v2, :cond_1

    .line 171
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    add-int/2addr v0, p1

    .line 172
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzu()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr v2, v0

    .line 169
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/wearable/zzk;->zzh(I)V

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzu()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object p1

    throw p1

    .line 167
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzv()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object p1

    throw p1
.end method

.method private final zzo()V
    .locals 2

    .line 133
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    .line 134
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    .line 135
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgx:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 136
    iput v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgu:I

    .line 137
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgu:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgu:I

    return-void
.end method

.method private final zzq()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    if-eq v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    aget-byte v0, v1, v0

    return v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzu()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final getPosition()I
    .locals 2

    .line 147
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgr:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzw;->zzhy:[B

    return-object v0

    .line 64
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    iget v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 66
    new-array v1, v0, [B

    .line 67
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzk;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    return-object v1

    .line 65
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzu()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object v0

    throw v0

    .line 61
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzv()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object v0

    throw v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    if-ltz v0, :cond_1

    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    iget v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzk;->buffer:[B

    sget-object v4, Lcom/google/android/gms/internal/wearable/zzr;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 46
    iget v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    return-object v1

    .line 44
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzu()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object v0

    throw v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzv()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object v0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/wearable/zzt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    .line 49
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgy:I

    iget v2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgz:I

    if-ge v1, v2, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wearable/zzk;->zze(I)I

    move-result v0

    .line 53
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgy:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgy:I

    .line 54
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/wearable/zzt;->zza(Lcom/google/android/gms/internal/wearable/zzk;)Lcom/google/android/gms/internal/wearable/zzt;

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzc(I)V

    .line 56
    iget p1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgy:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgy:I

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wearable/zzk;->zzf(I)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzs;

    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/wearable/zzs;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1
.end method

.method public final zzb(II)[B
    .locals 3

    if-nez p2, :cond_0

    .line 149
    sget-object p1, Lcom/google/android/gms/internal/wearable/zzw;->zzhy:[B

    return-object p1

    .line 150
    :cond_0
    new-array v0, p2, [B

    .line 151
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgr:I

    add-int/2addr v1, p1

    .line 152
    iget-object p1, p0, Lcom/google/android/gms/internal/wearable/zzk;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final zzc(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzs;
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgw:I

    if-ne v0, p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzs;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/wearable/zzs;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method final zzc(II)V
    .locals 3

    .line 156
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgr:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_1

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 160
    iput v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    .line 161
    iput p2, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgw:I

    return-void

    .line 159
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

    .line 157
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

.method public final zzd(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 38
    new-instance p1, Lcom/google/android/gms/internal/wearable/zzs;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/wearable/zzs;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 36
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzm()I

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 26
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzj()I

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wearable/zzk;->zzd(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzc(I)V

    return v1

    .line 23
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzh(I)V

    return v1

    .line 21
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzn()J

    return v1

    .line 19
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    return v1

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

.method public final zze(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/wearable/zzs;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 126
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    add-int/2addr p1, v0

    .line 127
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgx:I

    if-gt p1, v0, :cond_0

    .line 130
    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgx:I

    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzo()V

    return v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzu()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object p1

    throw p1

    .line 125
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzv()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object p1

    throw p1
.end method

.method public final zzf(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgx:I

    .line 141
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzo()V

    return-void
.end method

.method public final zzg(I)V
    .locals 1

    .line 154
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgw:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/zzk;->zzc(II)V

    return-void
.end method

.method public final zzj()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgw:I

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgw:I

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgw:I

    if-eqz v0, :cond_1

    return v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzs;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wearable/zzs;-><init>(Ljava/lang/String;)V

    .line 9
    throw v0
.end method

.method public final zzk()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzw()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    return v0
.end method

.method public final zzl()J
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

    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

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

    .line 100
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzs;->zzw()Lcom/google/android/gms/internal/wearable/zzs;

    move-result-object v0

    throw v0

    return-void
.end method

.method public final zzm()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v0

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v1

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v2

    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

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

.method public final zzn()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v0

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v1

    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v2

    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v3

    .line 110
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v4

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v5

    .line 112
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v6

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzk;->zzq()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzp()I
    .locals 2

    .line 143
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgx:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 145
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzk;->zzgv:I

    sub-int/2addr v0, v1

    return v0
.end method
