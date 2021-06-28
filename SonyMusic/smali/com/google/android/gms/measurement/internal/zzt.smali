.class final Lcom/google/android/gms/measurement/internal/zzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

.field private zzb:Ljava/lang/Long;

.field private zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcd$zzc;)Lcom/google/android/gms/internal/measurement/zzcd$zzc;
    .locals 13

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->f_()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v2

    const-string v3, "_eid"

    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Long;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const-string v6, "_ep"

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_b

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->f_()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v0

    const-string v4, "_en"

    invoke-virtual {v0, p2, v4}, Lcom/google/android/gms/measurement/internal/zzkt;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzf()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Extra parameter without an event name. eventId"

    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6

    .line 13
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-eqz v4, :cond_5

    .line 14
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 16
    iget-object v9, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v9, :cond_4

    goto/16 :goto_4

    .line 21
    :cond_4
    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    iput-object v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    .line 22
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    .line 23
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->f_()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v9, "_eid"

    invoke-virtual {v4, v6, v9}, Lcom/google/android/gms/measurement/internal/zzkt;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/lang/Long;

    .line 25
    :cond_5
    iget-wide v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    .line 26
    iget-wide v9, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    cmp-long v4, v9, v7

    if-gtz v4, :cond_6

    .line 27
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzc()V

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzex;->zzw()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    const-string v6, "Clearing complex main event info. appId"

    invoke-virtual {v5, v6, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "delete from main_event_params where app_id=?"

    .line 31
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzex;->zze()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzcd$zzc;)Z

    .line 37
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->f_()Lcom/google/android/gms/measurement/internal/zzkt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/google/android/gms/measurement/internal/zzkt;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v4

    if-nez v4, :cond_7

    .line 41
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 43
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, p1

    goto :goto_5

    .line 46
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzf()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v2, "No unique parameters in main event. eventName"

    .line 48
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 17
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzf()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string p2, "Extra parameter without existing main event. eventName, eventId"

    .line 19
    invoke-virtual {p1, p2, v0, v5}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    :cond_b
    if-eqz v4, :cond_e

    .line 50
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/lang/Long;

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->f_()Lcom/google/android/gms/measurement/internal/zzkt;

    move-result-object v2

    const-string v3, "_epc"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 54
    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/measurement/internal/zzkt;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    move-object v2, v4

    .line 56
    :cond_c
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    .line 57
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_d

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzq()Lcom/google/android/gms/measurement/internal/zzex;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzex;->zzf()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    const-string v2, "Complex event with zero extra param count. eventName"

    .line 60
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzez;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 61
    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v3

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:J

    move-object v4, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzcd$zzc;)Z

    .line 63
    :cond_e
    :goto_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zzbo()Lcom/google/android/gms/internal/measurement/zzhv$zzb;

    move-result-object p1

    .line 64
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhv$zzb;->zzy()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    return-object p1
.end method
