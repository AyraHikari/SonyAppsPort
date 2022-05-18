.class public final Lcom/google/android/gms/internal/wearable/zze;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/wearable/zzf;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wearable/zzg;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ljava/util/TreeSet;

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/wearable/zzh;

    .line 7
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v5}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 9
    new-instance v7, Lcom/google/android/gms/internal/wearable/zzh;

    invoke-direct {v7}, Lcom/google/android/gms/internal/wearable/zzh;-><init>()V

    aput-object v7, v3, v4

    .line 10
    aget-object v7, v3, v4

    iput-object v5, v7, Lcom/google/android/gms/internal/wearable/zzh;->name:Ljava/lang/String;

    .line 11
    aget-object v5, v3, v4

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/wearable/zze;->zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzi;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/wearable/zzh;->zzga:Lcom/google/android/gms/internal/wearable/zzi;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iput-object v3, v0, Lcom/google/android/gms/internal/wearable/zzg;->zzfy:[Lcom/google/android/gms/internal/wearable/zzh;

    .line 16
    new-instance p0, Lcom/google/android/gms/internal/wearable/zzf;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/wearable/zzf;-><init>(Lcom/google/android/gms/internal/wearable/zzg;Ljava/util/List;)V

    return-object p0
.end method

.method private static zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzi;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/wearable/zzi;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wearable/zzi;-><init>()V

    const/16 v1, 0xe

    if-nez p1, :cond_0

    .line 25
    iput v1, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    return-object v0

    .line 27
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/wearable/zzj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/wearable/zzj;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    .line 28
    instance-of v2, p1, Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 29
    iput v3, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 30
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    goto/16 :goto_4

    .line 31
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    const/4 v4, 0x6

    if-eqz v2, :cond_2

    .line 32
    iput v4, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 33
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    goto/16 :goto_4

    .line 34
    :cond_2
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    const/4 p0, 0x5

    .line 35
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 36
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    goto/16 :goto_4

    .line 37
    :cond_3
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    const/4 p0, 0x3

    .line 38
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 39
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    goto/16 :goto_4

    .line 40
    :cond_4
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    const/4 p0, 0x4

    .line 41
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 42
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    goto/16 :goto_4

    .line 43
    :cond_5
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    const/16 p0, 0x8

    .line 44
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 45
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    goto/16 :goto_4

    .line 46
    :cond_6
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_7

    const/4 p0, 0x7

    .line 47
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 48
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    goto/16 :goto_4

    .line 49
    :cond_7
    instance-of v2, p1, [B

    const/4 v5, 0x1

    if-eqz v2, :cond_8

    .line 50
    iput v5, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 51
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    goto/16 :goto_4

    .line 52
    :cond_8
    instance-of v2, p1, [Ljava/lang/String;

    if-eqz v2, :cond_9

    const/16 p0, 0xb

    .line 53
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 54
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    goto/16 :goto_4

    .line 55
    :cond_9
    instance-of v2, p1, [J

    if-eqz v2, :cond_a

    const/16 p0, 0xc

    .line 56
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 57
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    goto/16 :goto_4

    .line 58
    :cond_a
    instance-of v2, p1, [F

    if-eqz v2, :cond_b

    const/16 p0, 0xf

    .line 59
    iput p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 60
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, [F

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    goto/16 :goto_4

    .line 61
    :cond_b
    instance-of v2, p1, Lcom/google/android/gms/wearable/Asset;

    if-eqz v2, :cond_c

    const/16 v1, 0xd

    .line 62
    iput v1, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 63
    iget-object v1, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    check-cast p1, Lcom/google/android/gms/wearable/Asset;

    .line 64
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v5

    int-to-long p0, p0

    .line 66
    iput-wide p0, v1, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    goto/16 :goto_4

    .line 67
    :cond_c
    instance-of v2, p1, Lcom/google/android/gms/wearable/DataMap;

    const/4 v6, 0x0

    const/16 v7, 0x9

    if-eqz v2, :cond_e

    .line 68
    iput v7, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 69
    check-cast p1, Lcom/google/android/gms/wearable/DataMap;

    .line 70
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/wearable/zzh;

    .line 73
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    new-instance v4, Lcom/google/android/gms/internal/wearable/zzh;

    invoke-direct {v4}, Lcom/google/android/gms/internal/wearable/zzh;-><init>()V

    aput-object v4, v2, v6

    .line 75
    aget-object v4, v2, v6

    iput-object v3, v4, Lcom/google/android/gms/internal/wearable/zzh;->name:Ljava/lang/String;

    .line 76
    aget-object v4, v2, v6

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/wearable/zze;->zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzi;

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/wearable/zzh;->zzga:Lcom/google/android/gms/internal/wearable/zzi;

    add-int/2addr v6, v5

    goto :goto_0

    .line 79
    :cond_d
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    iput-object v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    goto/16 :goto_4

    .line 80
    :cond_e
    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    const/16 v2, 0xa

    .line 81
    iput v2, v0, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    .line 82
    check-cast p1, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/wearable/zzi;

    const/4 v5, 0x0

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object v9, v5

    const/16 v5, 0xe

    :goto_1
    if-ge v6, v8, :cond_13

    .line 87
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 88
    invoke-static {p0, v10}, Lcom/google/android/gms/internal/wearable/zze;->zza(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzi;

    move-result-object v11

    .line 89
    iget v12, v11, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    if-eq v12, v1, :cond_10

    if-eq v12, v3, :cond_10

    if-eq v12, v4, :cond_10

    if-ne v12, v7, :cond_f

    goto :goto_2

    .line 90
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_2
    if-ne v5, v1, :cond_11

    .line 92
    iget v12, v11, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    if-eq v12, v1, :cond_11

    move-object v9, v10

    move v5, v12

    goto :goto_3

    .line 95
    :cond_11
    iget v12, v11, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    if-ne v12, v5, :cond_12

    .line 99
    :goto_3
    aput-object v11, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 96
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 97
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x50

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ArrayList elements must all be of the sameclass, but this one contains a "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and a "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_13
    iget-object p0, v0, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    iput-object v2, p0, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    :goto_4
    return-object v0

    .line 103
    :cond_14
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "newFieldValueFromValue: unexpected value "

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/wearable/zzf;)Lcom/google/android/gms/wearable/DataMap;
    .locals 7

    .line 18
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzf;->zzfw:Lcom/google/android/gms/internal/wearable/zzg;

    iget-object v1, v1, Lcom/google/android/gms/internal/wearable/zzg;->zzfy:[Lcom/google/android/gms/internal/wearable/zzh;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 20
    iget-object v5, p0, Lcom/google/android/gms/internal/wearable/zzf;->zzfx:Ljava/util/List;

    iget-object v6, v4, Lcom/google/android/gms/internal/wearable/zzh;->name:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/wearable/zzh;->zzga:Lcom/google/android/gms/internal/wearable/zzi;

    invoke-static {v5, v0, v6, v4}, Lcom/google/android/gms/internal/wearable/zze;->zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzi;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzi;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/Asset;",
            ">;",
            "Lcom/google/android/gms/wearable/DataMap;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/wearable/zzi;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 106
    iget v4, v3, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    const/4 v5, 0x0

    const/16 v6, 0xe

    if-ne v4, v6, :cond_0

    .line 108
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 112
    iget-object v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgd:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V

    return-void

    :cond_1
    const/16 v7, 0xb

    if-ne v4, v7, :cond_2

    .line 114
    iget-object v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgn:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v7, 0xc

    if-ne v4, v7, :cond_3

    .line 116
    iget-object v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgo:[J

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V

    return-void

    :cond_3
    const/16 v7, 0xf

    if-ne v4, v7, :cond_4

    .line 118
    iget-object v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgp:[F

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloatArray(Ljava/lang/String;[F)V

    return-void

    :cond_4
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    .line 120
    iget-object v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v8, 0x3

    if-ne v4, v8, :cond_6

    .line 122
    iget-wide v3, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgf:D

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/wearable/DataMap;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_6
    const/4 v8, 0x4

    if-ne v4, v8, :cond_7

    .line 124
    iget v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgg:F

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloat(Ljava/lang/String;F)V

    return-void

    :cond_7
    const/4 v8, 0x5

    if-ne v4, v8, :cond_8

    .line 126
    iget-wide v3, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgh:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_8
    const/4 v8, 0x6

    if-ne v4, v8, :cond_9

    .line 128
    iget v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_9
    const/4 v9, 0x7

    if-ne v4, v9, :cond_a

    .line 130
    iget v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgj:I

    int-to-byte v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putByte(Ljava/lang/String;B)V

    return-void

    :cond_a
    const/16 v9, 0x8

    if-ne v4, v9, :cond_b

    .line 132
    iget-boolean v0, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgk:Z

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_b
    const/16 v9, 0xd

    if-ne v4, v9, :cond_e

    if-nez v0, :cond_d

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "populateBundle: unexpected type for: "

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_d
    iget-wide v3, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgq:J

    long-to-int v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    return-void

    :cond_e
    const/16 v10, 0x9

    if-ne v4, v10, :cond_10

    .line 138
    new-instance v4, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v4}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 139
    iget-object v3, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    .line 140
    array-length v5, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_f

    aget-object v6, v3, v9

    .line 141
    iget-object v7, v6, Lcom/google/android/gms/internal/wearable/zzh;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/wearable/zzh;->zzga:Lcom/google/android/gms/internal/wearable/zzi;

    invoke-static {v0, v4, v7, v6}, Lcom/google/android/gms/internal/wearable/zze;->zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzi;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 143
    :cond_f
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    return-void

    :cond_10
    const/16 v11, 0xa

    if-ne v4, v11, :cond_21

    .line 145
    iget-object v4, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    .line 147
    array-length v11, v4

    const/4 v12, 0x0

    const/16 v13, 0xe

    :goto_2
    if-ge v12, v11, :cond_16

    aget-object v14, v4, v12

    if-ne v13, v6, :cond_14

    .line 149
    iget v15, v14, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    if-eq v15, v10, :cond_13

    if-eq v15, v7, :cond_13

    if-ne v15, v8, :cond_11

    goto :goto_3

    :cond_11
    if-ne v15, v6, :cond_12

    goto :goto_4

    .line 152
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected TypedValue type: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for key "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_13
    :goto_3
    iget v13, v14, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    goto :goto_4

    .line 153
    :cond_14
    iget v14, v14, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    if-ne v14, v13, :cond_15

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 154
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ArrayList elements should all be the same type, but ArrayList with key "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " contains items of type "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    iget-object v11, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    array-length v11, v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    iget-object v3, v3, Lcom/google/android/gms/internal/wearable/zzj;->zzgm:[Lcom/google/android/gms/internal/wearable/zzi;

    array-length v11, v3

    const/4 v12, 0x0

    :goto_5
    const/16 v14, 0x27

    if-ge v12, v11, :cond_1c

    aget-object v15, v3, v12

    .line 161
    iget v9, v15, Lcom/google/android/gms/internal/wearable/zzi;->type:I

    if-ne v9, v6, :cond_17

    .line 162
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    if-ne v13, v10, :cond_19

    .line 164
    new-instance v9, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v9}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 165
    iget-object v14, v15, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    iget-object v14, v14, Lcom/google/android/gms/internal/wearable/zzj;->zzgl:[Lcom/google/android/gms/internal/wearable/zzh;

    .line 166
    array-length v15, v14

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v15, :cond_18

    aget-object v10, v14, v5

    .line 167
    iget-object v6, v10, Lcom/google/android/gms/internal/wearable/zzh;->name:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/gms/internal/wearable/zzh;->zzga:Lcom/google/android/gms/internal/wearable/zzi;

    invoke-static {v0, v9, v6, v10}, Lcom/google/android/gms/internal/wearable/zze;->zza(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/wearable/zzi;)V

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xe

    const/16 v10, 0x9

    goto :goto_6

    .line 169
    :cond_18
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_19
    if-ne v13, v7, :cond_1a

    .line 171
    iget-object v5, v15, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    iget-object v5, v5, Lcom/google/android/gms/internal/wearable/zzj;->zzge:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1a
    if-ne v13, v8, :cond_1b

    .line 173
    iget-object v5, v15, Lcom/google/android/gms/internal/wearable/zzi;->zzgc:Lcom/google/android/gms/internal/wearable/zzj;

    iget v5, v5, Lcom/google/android/gms/internal/wearable/zzj;->zzgi:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/16 v10, 0x9

    goto :goto_5

    .line 174
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected typeOfArrayList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/16 v0, 0xe

    if-ne v13, v0, :cond_1d

    .line 179
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_1d
    const/16 v0, 0x9

    if-ne v13, v0, :cond_1e

    .line 181
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_1e
    if-ne v13, v7, :cond_1f

    .line 183
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :cond_1f
    if-ne v13, v8, :cond_20

    .line 185
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/wearable/DataMap;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    .line 186
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected typeOfArrayList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "populateBundle: unexpected type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method
