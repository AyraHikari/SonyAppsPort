.class public final Lcom/google/android/gms/internal/measurement/zzfh;
.super Lcom/google/android/gms/internal/measurement/zzfc;
.source "com.google.android.gms:play-services-measurement-impl@@17.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfc<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzfe;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfe<",
            "TK;TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfc;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzev;->zza:Lcom/google/android/gms/internal/measurement/zzev;

    return-object v1

    .line 8
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzfa;

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfa;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 15
    instance-of v9, v5, Lcom/google/android/gms/internal/measurement/zzff;

    if-eqz v9, :cond_1

    instance-of v9, v5, Ljava/util/SortedSet;

    if-nez v9, :cond_1

    .line 16
    move-object v9, v5

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzff;

    .line 17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzex;->zzg()Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_5

    .line 19
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 20
    array-length v9, v5

    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzff;->zza(I)I

    move-result v10

    .line 29
    new-array v14, v10, [Ljava/lang/Object;

    add-int/lit8 v15, v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_2

    .line 24
    :pswitch_0
    aget-object v5, v5, v3

    .line 26
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-direct {v9, v5}, Lcom/google/android/gms/internal/measurement/zzft;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 22
    :pswitch_1
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Lcom/google/android/gms/internal/measurement/zzfr;

    goto/16 :goto_5

    :goto_2
    if-ge v11, v9, :cond_4

    .line 34
    aget-object v3, v5, v11

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v16

    .line 36
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/zzeu;->zza(I)I

    move-result v17

    :goto_3
    and-int v18, v17, v15

    .line 38
    aget-object v7, v14, v18

    if-nez v7, :cond_2

    add-int/lit8 v7, v13, 0x1

    .line 40
    aput-object v3, v5, v13

    .line 41
    aput-object v3, v14, v18

    add-int v12, v12, v16

    move v13, v7

    goto :goto_4

    .line 44
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 47
    :cond_4
    invoke-static {v5, v13, v9, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 v3, 0x1

    if-ne v13, v3, :cond_5

    const/4 v3, 0x0

    .line 49
    aget-object v5, v5, v3

    .line 50
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzft;

    invoke-direct {v9, v5, v12}, Lcom/google/android/gms/internal/measurement/zzft;-><init>(Ljava/lang/Object;I)V

    goto :goto_5

    .line 51
    :cond_5
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzff;->zza(I)I

    move-result v3

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_6

    move v9, v13

    const/4 v3, 0x0

    goto :goto_1

    .line 53
    :cond_6
    array-length v3, v5

    shr-int/lit8 v6, v3, 0x1

    shr-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    if-ge v13, v6, :cond_7

    .line 55
    invoke-static {v5, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 56
    :cond_7
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzfr;

    move-object v11, v3

    move v6, v12

    move-object v12, v5

    move v5, v13

    move v13, v6

    move/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/measurement/zzfr;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    move-object v9, v3

    .line 58
    :goto_5
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 60
    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zzb:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    shl-int/2addr v3, v5

    .line 61
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zza:[Ljava/lang/Object;

    array-length v7, v6

    if-le v3, v7, :cond_b

    .line 62
    array-length v7, v6

    if-ltz v3, :cond_a

    shr-int/lit8 v10, v7, 0x1

    add-int/2addr v7, v10

    add-int/2addr v7, v5

    if-ge v7, v3, :cond_8

    add-int/lit8 v3, v3, -0x1

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    shl-int/lit8 v7, v3, 0x1

    :cond_8
    if-gez v7, :cond_9

    const v7, 0x7fffffff

    .line 72
    :cond_9
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zza:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 73
    iput-boolean v3, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zzc:Z

    goto :goto_6

    .line 65
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot store more than MAX_VALUE elements"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_b
    const/4 v3, 0x0

    .line 74
    :goto_6
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zza:[Ljava/lang/Object;

    iget v6, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zzb:I

    mul-int/lit8 v7, v6, 0x2

    aput-object v8, v5, v7

    mul-int/lit8 v7, v6, 0x2

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 76
    aput-object v9, v5, v7

    add-int/2addr v6, v8

    .line 77
    iput v6, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zzb:I

    .line 78
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x1

    .line 80
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfe;

    .line 82
    iput-boolean v8, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zzc:Z

    .line 83
    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zzb:I

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzfa;->zza:[Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfk;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v2

    .line 84
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/measurement/zzfe;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;ILjava/util/Comparator;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
