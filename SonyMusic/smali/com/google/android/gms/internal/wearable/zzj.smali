.class public final Lcom/google/android/gms/internal/wearable/zzj;
.super Lcom/google/android/gms/internal/wearable/zzn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/wearable/zzn<",
        "Lcom/google/android/gms/internal/wearable/zzj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzgd:[B

.field public zzge:Ljava/lang/String;

.field public zzgf:D

.field public zzgg:F

.field public zzgh:J

.field public zzgi:I

.field public zzgj:I

.field public zzgk:Z

.field public zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

.field public zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

.field public zzgn:[Ljava/lang/String;

.field public zzgo:[J

.field public zzgp:[F

.field public zzgq:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wearable/zzn;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/wearable/zzw;->zzhy:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    .line 9
    iput v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    .line 10
    iput-boolean v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzh;->zzh()[Lcom/google/android/gms/internal/wearable/zzh;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzi;->zzi()[Lcom/google/android/gms/internal/wearable/zzi;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/wearable/zzw;->zzhw:[Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/wearable/zzw;->zzhs:[J

    iput-object v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/wearable/zzw;->zzht:[F

    iput-object v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzn;->zzhc:Lcom/google/android/gms/internal/wearable/zzp;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzt;->zzhl:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/wearable/zzj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 24
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/wearable/zzj;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 28
    iget-object v1, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    .line 30
    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 32
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 33
    iget-wide v5, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 35
    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 36
    iget v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 38
    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 40
    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    iget v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    if-eq v1, v3, :cond_8

    return v2

    .line 42
    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    iget v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    if-eq v1, v3, :cond_9

    return v2

    .line 44
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 46
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    iget-object v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/wearable/zzr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 48
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    iget-object v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/wearable/zzr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 50
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/wearable/zzr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 52
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/wearable/zzr;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 54
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    iget-object v3, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/wearable/zzr;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 56
    :cond_f
    iget-wide v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    .line 58
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzn;->zzhc:Lcom/google/android/gms/internal/wearable/zzp;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wearable/zzp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_0

    .line 60
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzn;->zzhc:Lcom/google/android/gms/internal/wearable/zzp;

    iget-object p1, p1, Lcom/google/android/gms/internal/wearable/zzn;->zzhc:Lcom/google/android/gms/internal/wearable/zzp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 59
    :cond_12
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/wearable/zzn;->zzhc:Lcom/google/android/gms/internal/wearable/zzp;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzp;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1

    :cond_13
    return v2

    :cond_14
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 65
    iget-wide v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    .line 68
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-wide v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-boolean v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v3, 0x4d5

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    .line 74
    invoke-static {v3}, Lcom/google/android/gms/internal/wearable/zzr;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    .line 76
    invoke-static {v3}, Lcom/google/android/gms/internal/wearable/zzr;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    .line 78
    invoke-static {v3}, Lcom/google/android/gms/internal/wearable/zzr;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    .line 80
    invoke-static {v3}, Lcom/google/android/gms/internal/wearable/zzr;->hashCode([J)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    .line 82
    invoke-static {v3}, Lcom/google/android/gms/internal/wearable/zzr;->hashCode([F)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-wide v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzn;->zzhc:Lcom/google/android/gms/internal/wearable/zzp;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wearable/zzp;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzn;->zzhc:Lcom/google/android/gms/internal/wearable/zzp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wearable/zzp;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/wearable/zzk;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzj()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 246
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/wearable/zzn;->zza(Lcom/google/android/gms/internal/wearable/zzk;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x75

    .line 363
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/wearable/zzw;->zzb(Lcom/google/android/gms/internal/wearable/zzk;I)I

    move-result v0

    .line 364
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    add-int/2addr v0, v3

    .line 365
    new-array v0, v0, [F

    if-eqz v3, :cond_2

    .line 367
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :cond_2
    :goto_2
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_3

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 371
    aput v2, v0, v3

    .line 372
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzj()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 375
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 376
    aput v1, v0, v3

    .line 377
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    goto :goto_0

    .line 379
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    .line 380
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wearable/zzk;->zze(I)I

    move-result v1

    .line 381
    div-int/lit8 v0, v0, 0x4

    .line 382
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    .line 383
    new-array v0, v0, [F

    if-eqz v3, :cond_5

    .line 385
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :cond_5
    :goto_4
    array-length v2, v0

    if-ge v3, v2, :cond_6

    .line 388
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 389
    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 391
    :cond_6
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    .line 392
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/wearable/zzk;->zzf(I)V

    goto :goto_0

    .line 359
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzl()J

    move-result-wide v0

    .line 360
    iput-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    goto :goto_0

    .line 337
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    .line 338
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wearable/zzk;->zze(I)I

    move-result v0

    .line 340
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    .line 341
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzp()I

    move-result v4

    if-lez v4, :cond_7

    .line 343
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzl()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 345
    :cond_7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/wearable/zzk;->zzg(I)V

    .line 346
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    array-length v1, v1

    :goto_6
    add-int/2addr v3, v1

    .line 347
    new-array v3, v3, [J

    if-eqz v1, :cond_9

    .line 349
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :cond_9
    :goto_7
    array-length v2, v3

    if-ge v1, v2, :cond_a

    .line 352
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzl()J

    move-result-wide v4

    .line 353
    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 355
    :cond_a
    iput-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    .line 356
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wearable/zzk;->zzf(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x60

    .line 321
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/wearable/zzw;->zzb(Lcom/google/android/gms/internal/wearable/zzk;I)I

    move-result v0

    .line 322
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    array-length v3, v3

    :goto_8
    add-int/2addr v0, v3

    .line 323
    new-array v0, v0, [J

    if-eqz v3, :cond_c

    .line 325
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    :cond_c
    :goto_9
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_d

    .line 328
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzl()J

    move-result-wide v4

    .line 329
    aput-wide v4, v0, v3

    .line 330
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzj()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 333
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzl()J

    move-result-wide v1

    .line 334
    aput-wide v1, v0, v3

    .line 335
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x5a

    .line 308
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/wearable/zzw;->zzb(Lcom/google/android/gms/internal/wearable/zzk;I)I

    move-result v0

    .line 309
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_a

    :cond_e
    array-length v3, v3

    :goto_a
    add-int/2addr v0, v3

    .line 310
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 312
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    :cond_f
    :goto_b
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_10

    .line 314
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 315
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzj()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 317
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 318
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x52

    .line 293
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/wearable/zzw;->zzb(Lcom/google/android/gms/internal/wearable/zzk;I)I

    move-result v0

    .line 294
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    if-nez v3, :cond_11

    const/4 v3, 0x0

    goto :goto_c

    :cond_11
    array-length v3, v3

    :goto_c
    add-int/2addr v0, v3

    .line 295
    new-array v0, v0, [Lcom/google/android/gms/internal/wearable/zzi;

    if-eqz v3, :cond_12

    .line 297
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_12
    :goto_d
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_13

    .line 299
    new-instance v2, Lcom/google/android/gms/internal/wearable/zzi;

    invoke-direct {v2}, Lcom/google/android/gms/internal/wearable/zzi;-><init>()V

    aput-object v2, v0, v3

    .line 300
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/wearable/zzk;->zza(Lcom/google/android/gms/internal/wearable/zzt;)V

    .line 301
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzj()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 303
    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/wearable/zzi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/wearable/zzi;-><init>()V

    aput-object v1, v0, v3

    .line 304
    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/wearable/zzk;->zza(Lcom/google/android/gms/internal/wearable/zzt;)V

    .line 305
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x4a

    .line 278
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/wearable/zzw;->zzb(Lcom/google/android/gms/internal/wearable/zzk;I)I

    move-result v0

    .line 279
    iget-object v3, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    if-nez v3, :cond_14

    const/4 v3, 0x0

    goto :goto_e

    :cond_14
    array-length v3, v3

    :goto_e
    add-int/2addr v0, v3

    .line 280
    new-array v0, v0, [Lcom/google/android/gms/internal/wearable/zzh;

    if-eqz v3, :cond_15

    .line 282
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    invoke-static {v4, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :cond_15
    :goto_f
    array-length v2, v0

    sub-int/2addr v2, v1

    if-ge v3, v2, :cond_16

    .line 284
    new-instance v2, Lcom/google/android/gms/internal/wearable/zzh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/wearable/zzh;-><init>()V

    aput-object v2, v0, v3

    .line 285
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/wearable/zzk;->zza(Lcom/google/android/gms/internal/wearable/zzt;)V

    .line 286
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzj()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 288
    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/wearable/zzh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/wearable/zzh;-><init>()V

    aput-object v1, v0, v3

    .line 289
    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/wearable/zzk;->zza(Lcom/google/android/gms/internal/wearable/zzt;)V

    .line 290
    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    goto/16 :goto_0

    .line 274
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    .line 275
    :goto_10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    goto/16 :goto_0

    .line 269
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x1

    and-int/2addr v0, v1

    neg-int v0, v0

    xor-int/2addr v0, v2

    .line 271
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    goto/16 :goto_0

    .line 265
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzk()I

    move-result v0

    .line 266
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    goto/16 :goto_0

    .line 261
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzl()J

    move-result-wide v0

    .line 262
    iput-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    goto/16 :goto_0

    .line 257
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 258
    iput v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    goto/16 :goto_0

    .line 253
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->zzn()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 254
    iput-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    goto/16 :goto_0

    .line 250
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    goto/16 :goto_0

    .line 248
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wearable/zzk;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    goto/16 :goto_0

    :sswitch_10
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x19 -> :sswitch_d
        0x25 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x5a -> :sswitch_5
        0x60 -> :sswitch_4
        0x62 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/wearable/zzl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    sget-object v1, Lcom/google/android/gms/internal/wearable/zzw;->zzhy:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    .line 90
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/wearable/zzl;->zzf(II)V

    .line 92
    array-length v3, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/wearable/zzl;->zzl(I)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wearable/zzl;->zzc([B)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/wearable/zzl;->zza(ILjava/lang/String;)V

    .line 96
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    .line 98
    iget-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    const/4 v3, 0x3

    .line 99
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/wearable/zzl;->zzf(II)V

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/wearable/zzl;->zzb(J)V

    .line 102
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    .line 103
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    .line 104
    iget v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/wearable/zzl;->zza(IF)V

    .line 105
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 106
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/wearable/zzl;->zza(IJ)V

    .line 107
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 108
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/wearable/zzl;->zzd(II)V

    .line 109
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v4, 0x7

    .line 111
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/wearable/zzl;->zzf(II)V

    .line 113
    invoke-static {v0}, Lcom/google/android/gms/internal/wearable/zzl;->zzn(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wearable/zzl;->zzl(I)V

    .line 114
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    if-eqz v0, :cond_7

    const/16 v4, 0x8

    .line 116
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/wearable/zzl;->zzf(II)V

    int-to-byte v0, v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wearable/zzl;->zza(B)V

    .line 120
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    array-length v5, v4

    if-ge v0, v5, :cond_9

    .line 122
    aget-object v4, v4, v0

    if-eqz v4, :cond_8

    const/16 v5, 0x9

    .line 124
    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/wearable/zzl;->zza(ILcom/google/android/gms/internal/wearable/zzt;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 127
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    array-length v5, v4

    if-ge v0, v5, :cond_b

    .line 128
    aget-object v4, v4, v0

    if-eqz v4, :cond_a

    const/16 v5, 0xa

    .line 130
    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/wearable/zzl;->zza(ILcom/google/android/gms/internal/wearable/zzt;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 133
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    array-length v5, v4

    if-ge v0, v5, :cond_d

    .line 134
    aget-object v4, v4, v0

    if-eqz v4, :cond_c

    const/16 v5, 0xb

    .line 136
    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/wearable/zzl;->zza(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    .line 139
    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    array-length v5, v4

    if-ge v0, v5, :cond_e

    const/16 v5, 0xc

    .line 140
    aget-wide v6, v4, v0

    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/internal/wearable/zzl;->zza(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 142
    :cond_e
    iget-wide v4, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    .line 143
    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/wearable/zzl;->zza(IJ)V

    .line 144
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    if-eqz v0, :cond_10

    array-length v0, v0

    if-lez v0, :cond_10

    .line 145
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    array-length v2, v0

    if-ge v1, v2, :cond_10

    const/16 v2, 0xe

    .line 146
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/wearable/zzl;->zza(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 148
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/wearable/zzn;->zza(Lcom/google/android/gms/internal/wearable/zzl;)V

    return-void
.end method

.method protected final zzg()I
    .locals 18

    move-object/from16 v0, p0

    .line 150
    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/wearable/zzn;->zzg()I

    move-result v1

    .line 151
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    sget-object v3, Lcom/google/android/gms/internal/wearable/zzw;->zzhy:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 152
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    .line 154
    invoke-static {v3}, Lcom/google/android/gms/internal/wearable/zzl;->zzk(I)I

    move-result v4

    .line 155
    array-length v5, v2

    invoke-static {v5}, Lcom/google/android/gms/internal/wearable/zzl;->zzm(I)I

    move-result v5

    array-length v2, v2

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 158
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    .line 160
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/wearable/zzl;->zzb(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    :cond_1
    iget-wide v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 162
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    const/4 v2, 0x3

    const/16 v9, 0x8

    cmp-long v10, v5, v7

    if-eqz v10, :cond_2

    .line 164
    invoke-static {v2}, Lcom/google/android/gms/internal/wearable/zzl;->zzk(I)I

    move-result v5

    add-int/2addr v5, v9

    add-int/2addr v1, v5

    .line 166
    :cond_2
    iget v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    const/4 v6, 0x0

    .line 167
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    const/4 v7, 0x4

    if-eq v5, v6, :cond_3

    .line 169
    invoke-static {v7}, Lcom/google/android/gms/internal/wearable/zzl;->zzk(I)I

    move-result v5

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 171
    :cond_3
    iget-wide v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    const/4 v8, 0x5

    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-eqz v12, :cond_4

    .line 173
    invoke-static {v8, v5, v6}, Lcom/google/android/gms/internal/wearable/zzl;->zzb(IJ)I

    move-result v5

    add-int/2addr v1, v5

    .line 174
    :cond_4
    iget v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    const/4 v6, 0x6

    if-eqz v5, :cond_5

    .line 176
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/wearable/zzl;->zze(II)I

    move-result v5

    add-int/2addr v1, v5

    .line 177
    :cond_5
    iget v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    const/4 v12, 0x7

    if-eqz v5, :cond_6

    .line 180
    invoke-static {v12}, Lcom/google/android/gms/internal/wearable/zzl;->zzk(I)I

    move-result v13

    .line 181
    invoke-static {v5}, Lcom/google/android/gms/internal/wearable/zzl;->zzn(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/wearable/zzl;->zzm(I)I

    move-result v5

    add-int/2addr v13, v5

    add-int/2addr v1, v13

    .line 184
    :cond_6
    iget-boolean v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    if-eqz v5, :cond_7

    .line 186
    invoke-static {v9}, Lcom/google/android/gms/internal/wearable/zzl;->zzk(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 188
    :cond_7
    iget-object v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    const/16 v13, 0x9

    const/4 v14, 0x0

    if-eqz v5, :cond_a

    array-length v5, v5

    if-lez v5, :cond_a

    move v5, v1

    const/4 v1, 0x0

    .line 189
    :goto_0
    iget-object v15, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    array-length v2, v15

    if-ge v1, v2, :cond_9

    .line 190
    aget-object v2, v15, v1

    if-eqz v2, :cond_8

    .line 193
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/wearable/zzl;->zzb(ILcom/google/android/gms/internal/wearable/zzt;)I

    move-result v2

    add-int/2addr v5, v2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    goto :goto_0

    :cond_9
    move v1, v5

    .line 195
    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    const/16 v5, 0xa

    if-eqz v2, :cond_d

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v1

    const/4 v1, 0x0

    .line 196
    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    array-length v4, v15

    if-ge v1, v4, :cond_c

    .line 197
    aget-object v4, v15, v1

    if-eqz v4, :cond_b

    .line 200
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/wearable/zzl;->zzb(ILcom/google/android/gms/internal/wearable/zzt;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x2

    goto :goto_1

    :cond_c
    move v1, v2

    .line 202
    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    if-eqz v2, :cond_10

    array-length v2, v2

    if-lez v2, :cond_10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 205
    :goto_2
    iget-object v5, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    array-length v6, v5

    if-ge v2, v6, :cond_f

    .line 206
    aget-object v5, v5, v2

    if-eqz v5, :cond_e

    add-int/lit8 v15, v15, 0x1

    .line 210
    invoke-static {v5}, Lcom/google/android/gms/internal/wearable/zzl;->zzg(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_e
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x6

    goto :goto_2

    :cond_f
    add-int/2addr v1, v4

    mul-int/lit8 v15, v15, 0x1

    add-int/2addr v1, v15

    .line 214
    :cond_10
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    if-eqz v2, :cond_1b

    array-length v2, v2

    if-lez v2, :cond_1b

    const/4 v2, 0x0

    .line 216
    :goto_3
    iget-object v4, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    array-length v5, v4

    if-ge v14, v5, :cond_1a

    .line 217
    aget-wide v5, v4, v14

    const-wide/16 v16, -0x80

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_4

    :cond_11
    const-wide/16 v16, -0x4000

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_12

    const/4 v4, 0x2

    goto :goto_4

    :cond_12
    const-wide/32 v16, -0x200000

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_13

    const/4 v4, 0x3

    goto :goto_4

    :cond_13
    const-wide/32 v16, -0x10000000

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_14

    const/4 v4, 0x4

    goto :goto_4

    :cond_14
    const-wide v16, -0x800000000L

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_15

    const/4 v4, 0x5

    goto :goto_4

    :cond_15
    const-wide v16, -0x40000000000L

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_16

    const/4 v4, 0x6

    goto :goto_4

    :cond_16
    const-wide/high16 v16, -0x2000000000000L

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_17

    const/4 v4, 0x7

    goto :goto_4

    :cond_17
    const-wide/high16 v16, -0x100000000000000L

    and-long v16, v5, v16

    cmp-long v4, v16, v10

    if-nez v4, :cond_18

    const/16 v4, 0x8

    goto :goto_4

    :cond_18
    const-wide/high16 v16, -0x8000000000000000L

    and-long v5, v5, v16

    cmp-long v4, v5, v10

    if-nez v4, :cond_19

    const/16 v4, 0x9

    goto :goto_4

    :cond_19
    const/16 v4, 0xa

    :goto_4
    add-int/2addr v2, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_1a
    add-int/2addr v1, v2

    .line 233
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 234
    :cond_1b
    iget-wide v4, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_1c

    const/16 v2, 0xd

    .line 236
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/wearable/zzl;->zzb(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 237
    :cond_1c
    iget-object v2, v0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    if-eqz v2, :cond_1d

    array-length v4, v2

    if-lez v4, :cond_1d

    .line 238
    array-length v4, v2

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    .line 240
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    :cond_1d
    return v1
.end method
