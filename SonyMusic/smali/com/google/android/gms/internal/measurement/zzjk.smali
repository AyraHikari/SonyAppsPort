.class final Lcom/google/android/gms/internal/measurement/zzjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzjv<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/measurement/zzjg;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:[I

.field private final zzm:I

.field private final zzn:I

.field private final zzo:Lcom/google/android/gms/internal/measurement/zzjo;

.field private final zzp:Lcom/google/android/gms/internal/measurement/zziq;

.field private final zzq:Lcom/google/android/gms/internal/measurement/zzkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkn<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzr:Lcom/google/android/gms/internal/measurement/zzhk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhk<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzs:Lcom/google/android/gms/internal/measurement/zziz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 4016
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjk;->zza:[I

    .line 4017
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzjg;ZZ[IIILcom/google/android/gms/internal/measurement/zzjo;Lcom/google/android/gms/internal/measurement/zziq;Lcom/google/android/gms/internal/measurement/zzkn;Lcom/google/android/gms/internal/measurement/zzhk;Lcom/google/android/gms/internal/measurement/zziz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/measurement/zzjg;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/measurement/zzjo;",
            "Lcom/google/android/gms/internal/measurement/zziq;",
            "Lcom/google/android/gms/internal/measurement/zzkn<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhk<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zziz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzd:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zze:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzf:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/measurement/zzhv;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzi:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzj:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzjg;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzk:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzo:Lcom/google/android/gms/internal/measurement/zzjo;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzg:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    return-void
.end method

.method private final zza(II)I
    .locals 1

    .line 3999
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzf:I

    if-gt p1, v0, :cond_0

    .line 4000
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkn<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1156
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1157
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzgl;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/measurement/zzgl;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    .line 3344
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    .line 3345
    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3426
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    .line 3427
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3428
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 3429
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    .line 3432
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    .line 3433
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    .line 3434
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3435
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    if-nez v5, :cond_a

    .line 3420
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3421
    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgy;->zza(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    if-nez v5, :cond_a

    .line 3416
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3417
    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzgy;->zze(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    if-nez v5, :cond_a

    .line 3407
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v3

    .line 3408
    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    .line 3409
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3410
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 3413
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/zzkq;->zza(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    .line 3411
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_7

    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 3403
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zze([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3404
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 3390
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    move/from16 v5, p4

    .line 3391
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3392
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 3393
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    .line 3396
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 3397
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    .line 3398
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3399
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3400
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 3376
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3377
    iget v4, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 3379
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 3381
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/measurement/zzkw;->zza([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 3382
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzh()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3383
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzhx;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3384
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 3386
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_7
    if-nez v5, :cond_a

    .line 3372
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3373
    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 3368
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_7

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 3364
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    goto :goto_7

    :pswitch_a
    if-nez v5, :cond_a

    .line 3360
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3361
    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_b
    if-nez v5, :cond_a

    .line 3356
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3357
    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 3352
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_7

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 3348
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    .line 3436
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :cond_a
    :goto_8
    move v2, v4

    :goto_9
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzgl;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/measurement/zzgl;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    .line 2967
    sget-object v11, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzid;

    .line 2968
    invoke-interface {v11}, Lcom/google/android/gms/internal/measurement/zzid;->zza()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 2969
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 2972
    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/measurement/zzid;->zza(I)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v11

    .line 2973
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_34

    .line 3284
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 3288
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3289
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_2

    .line 3291
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v8

    .line 3292
    iget v9, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v9, :cond_2

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 3293
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3294
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v4

    goto/16 :goto_1a

    :pswitch_1
    if-ne v6, v10, :cond_5

    .line 3259
    check-cast v11, Lcom/google/android/gms/internal/measurement/zziu;

    .line 3260
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3261
    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_3

    .line 3263
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3264
    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzgy;->zza(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    goto :goto_2

    :cond_3
    if-ne v1, v2, :cond_4

    goto/16 :goto_1a

    .line 3266
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_5
    if-nez v6, :cond_34

    .line 3271
    check-cast v11, Lcom/google/android/gms/internal/measurement/zziu;

    .line 3272
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3273
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgy;->zza(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    :goto_3
    if-ge v1, v5, :cond_35

    .line 3275
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3276
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3277
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3278
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgy;->zza(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v10, :cond_8

    .line 3234
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhy;

    .line 3235
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3236
    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_6

    .line 3238
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3239
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgy;->zze(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhy;->zzd(I)V

    goto :goto_4

    :cond_6
    if-ne v1, v2, :cond_7

    goto/16 :goto_1a

    .line 3241
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_8
    if-nez v6, :cond_34

    .line 3246
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhy;

    .line 3247
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3248
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgy;->zze(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhy;->zzd(I)V

    :goto_5
    if-ge v1, v5, :cond_35

    .line 3250
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3251
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3252
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3253
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzgy;->zze(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhy;->zzd(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v10, :cond_9

    .line 3221
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzid;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    goto :goto_6

    :cond_9
    if-nez v6, :cond_34

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    .line 3223
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzid;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3224
    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzhv;->zzb:Lcom/google/android/gms/internal/measurement/zzkq;

    .line 3225
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v4

    if-ne v3, v4, :cond_a

    const/4 v3, 0x0

    .line 3228
    :cond_a
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    move/from16 v6, p6

    .line 3229
    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzkq;

    if-eqz v3, :cond_b

    .line 3231
    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/zzhv;->zzb:Lcom/google/android/gms/internal/measurement/zzkq;

    :cond_b
    move v1, v2

    goto/16 :goto_1a

    :pswitch_4
    if-ne v6, v10, :cond_34

    .line 3194
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3195
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ltz v4, :cond_11

    .line 3198
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_10

    if-nez v4, :cond_c

    .line 3201
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3202
    :cond_c
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzgm;->zza([BII)Lcom/google/android/gms/internal/measurement/zzgm;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_7
    if-ge v1, v5, :cond_35

    .line 3205
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3206
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3207
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3208
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ltz v4, :cond_f

    .line 3211
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_e

    if-nez v4, :cond_d

    .line 3214
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3215
    :cond_d
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zzgm;->zza([BII)Lcom/google/android/gms/internal/measurement/zzgm;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_7

    .line 3212
    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3210
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzb()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3199
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3197
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzb()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v10, :cond_34

    .line 3189
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    .line 3190
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;I[BIILcom/google/android/gms/internal/measurement/zzid;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    goto/16 :goto_1a

    :pswitch_6
    if-ne v6, v10, :cond_34

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    cmp-long v1, v8, v14

    if-nez v1, :cond_16

    .line 3133
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3134
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ltz v4, :cond_15

    if-nez v4, :cond_12

    const-string v4, ""

    .line 3138
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3139
    :cond_12
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzhx;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v1, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3140
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_8
    if-ge v1, v5, :cond_35

    .line 3143
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3144
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3145
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3146
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ltz v4, :cond_14

    if-nez v4, :cond_13

    const-string v4, ""

    .line 3150
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3151
    :cond_13
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zzhx;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v1, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3152
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_8

    .line 3148
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzb()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3136
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzb()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3159
    :cond_16
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3160
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ltz v4, :cond_1c

    if-nez v4, :cond_17

    const-string v4, ""

    .line 3164
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    add-int v6, v1, v4

    .line 3165
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/measurement/zzkw;->zza([BII)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 3167
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzhx;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3168
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    :goto_9
    if-ge v1, v5, :cond_35

    .line 3171
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3172
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3173
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3174
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ltz v4, :cond_1a

    if-nez v4, :cond_18

    const-string v4, ""

    .line 3178
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_18
    add-int v6, v1, v4

    .line 3179
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/measurement/zzkw;->zza([BII)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 3181
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zzhx;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3182
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    goto :goto_9

    .line 3180
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzh()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3176
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzb()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3166
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzh()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    .line 3162
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzb()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v10, :cond_20

    .line 3106
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 3107
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3108
    iget v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v4, v2

    :goto_a
    if-ge v2, v4, :cond_1e

    .line 3110
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v2

    .line 3111
    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_1d

    const/4 v5, 0x1

    goto :goto_b

    :cond_1d
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzgk;->zza(Z)V

    goto :goto_a

    :cond_1e
    if-ne v2, v4, :cond_1f

    move v1, v2

    goto/16 :goto_1a

    .line 3113
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_20
    if-nez v6, :cond_34

    .line 3118
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 3119
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3120
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    goto :goto_c

    :cond_21
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/zzgk;->zza(Z)V

    :goto_d
    if-ge v4, v5, :cond_23

    .line 3122
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v6

    .line 3123
    iget v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v8, :cond_23

    .line 3124
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3125
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    goto :goto_e

    :cond_22
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/zzgk;->zza(Z)V

    goto :goto_d

    :cond_23
    move v1, v4

    goto/16 :goto_1a

    :pswitch_8
    if-ne v6, v10, :cond_26

    .line 3081
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhy;

    .line 3082
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3083
    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v2, v1

    :goto_f
    if-ge v1, v2, :cond_24

    .line 3085
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhy;->zzd(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_f

    :cond_24
    if-ne v1, v2, :cond_25

    goto/16 :goto_1a

    .line 3088
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_26
    if-ne v6, v9, :cond_34

    .line 3093
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhy;

    .line 3094
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzhy;->zzd(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_10
    if-ge v1, v5, :cond_35

    .line 3097
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3098
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3099
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzhy;->zzd(I)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_10

    :pswitch_9
    if-ne v6, v10, :cond_29

    .line 3056
    check-cast v11, Lcom/google/android/gms/internal/measurement/zziu;

    .line 3057
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3058
    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v2, v1

    :goto_11
    if-ge v1, v2, :cond_27

    .line 3060
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_11

    :cond_27
    if-ne v1, v2, :cond_28

    goto/16 :goto_1a

    .line 3063
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_29
    if-ne v6, v13, :cond_34

    .line 3068
    check-cast v11, Lcom/google/android/gms/internal/measurement/zziu;

    .line 3069
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_12
    if-ge v1, v5, :cond_35

    .line 3072
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3073
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3074
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_12

    :pswitch_a
    if-ne v6, v10, :cond_2a

    .line 3051
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzid;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    goto/16 :goto_1a

    :cond_2a
    if-nez v6, :cond_34

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    .line 3053
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzid;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    goto/16 :goto_1a

    :pswitch_b
    if-ne v6, v10, :cond_2d

    .line 3027
    check-cast v11, Lcom/google/android/gms/internal/measurement/zziu;

    .line 3028
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3029
    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_2b

    .line 3031
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3032
    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    goto :goto_13

    :cond_2b
    if-ne v1, v2, :cond_2c

    goto/16 :goto_1a

    .line 3034
    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_2d
    if-nez v6, :cond_34

    .line 3039
    check-cast v11, Lcom/google/android/gms/internal/measurement/zziu;

    .line 3040
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3041
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    :goto_14
    if-ge v1, v5, :cond_35

    .line 3043
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3044
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3045
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3046
    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zziu;->zza(J)V

    goto :goto_14

    :pswitch_c
    if-ne v6, v10, :cond_30

    .line 3002
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhu;

    .line 3003
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3004
    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_2e

    .line 3006
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/measurement/zzhu;->zza(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_15

    :cond_2e
    if-ne v1, v2, :cond_2f

    goto :goto_1a

    .line 3009
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_30
    if-ne v6, v9, :cond_34

    .line 3014
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhu;

    .line 3015
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_16
    if-ge v1, v5, :cond_35

    .line 3018
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 3019
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 3020
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/measurement/zzhu;->zza(F)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_16

    :pswitch_d
    if-ne v6, v10, :cond_33

    .line 2977
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhg;

    .line 2978
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 2979
    iget v2, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_31

    .line 2981
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_17

    :cond_31
    if-ne v1, v2, :cond_32

    goto :goto_1a

    .line 2984
    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v1

    throw v1

    :cond_33
    if-ne v6, v13, :cond_34

    .line 2989
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzhg;

    .line 2990
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_18
    if-ge v1, v5, :cond_35

    .line 2993
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v4

    .line 2994
    iget v6, v7, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ne v2, v6, :cond_35

    .line 2995
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_18

    :cond_34
    :goto_19
    move v1, v4

    :cond_35
    :goto_1a
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzgl;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/measurement/zzgl;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3299
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    .line 3300
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(I)Ljava/lang/Object;

    move-result-object p5

    .line 3301
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3302
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zzc(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3304
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/measurement/zziz;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3305
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3306
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 3307
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 3308
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/measurement/zziz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 3309
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 3311
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p3

    .line 3312
    iget p6, p8, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    if-ltz p6, :cond_5

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_5

    add-int/2addr p6, p3

    .line 3316
    iget-object p7, p1, Lcom/google/android/gms/internal/measurement/zzix;->zzb:Ljava/lang/Object;

    .line 3317
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzix;->zzd:Ljava/lang/Object;

    :goto_0
    if-ge p3, p6, :cond_3

    add-int/lit8 v1, p3, 0x1

    .line 3319
    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    .line 3321
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v1

    .line 3322
    iget p3, p8, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 3331
    :pswitch_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzix;->zzc:Lcom/google/android/gms/internal/measurement/zzle;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 3332
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzix;->zzc:Lcom/google/android/gms/internal/measurement/zzle;

    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/zzix;->zzd:Ljava/lang/Object;

    .line 3333
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 3334
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza([BIILcom/google/android/gms/internal/measurement/zzle;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p3

    .line 3335
    iget-object v0, p8, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    goto :goto_0

    .line 3326
    :pswitch_1
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzix;->zza:Lcom/google/android/gms/internal/measurement/zzle;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 3327
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzix;->zza:Lcom/google/android/gms/internal/measurement/zzle;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    .line 3328
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza([BIILcom/google/android/gms/internal/measurement/zzle;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p3

    .line 3329
    iget-object p7, p8, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    goto :goto_0

    .line 3337
    :cond_2
    :goto_2
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p3

    goto :goto_0

    :cond_3
    if-ne p3, p6, :cond_4

    .line 3341
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    .line 3340
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzg()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p1

    throw p1

    .line 3314
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p1

    throw p1

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zza([BIILcom/google/android/gms/internal/measurement/zzle;Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzgl;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzle;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzgl;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2930
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zza:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 2965
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2963
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    goto/16 :goto_1

    .line 2960
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    .line 2961
    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgy;->zza(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    goto/16 :goto_1

    .line 2957
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    .line 2958
    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzgy;->zze(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    goto/16 :goto_1

    .line 2954
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjr;->zza()Lcom/google/android/gms/internal/measurement/zzjr;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/zzjr;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object p3

    .line 2955
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    goto :goto_1

    .line 2951
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    .line 2952
    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    goto :goto_1

    .line 2948
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    .line 2949
    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    goto :goto_1

    .line 2945
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 2942
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_1

    .line 2939
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 2936
    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_1

    .line 2934
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zze([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    goto :goto_1

    .line 2931
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result p0

    .line 2932
    iget-wide p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzje;Lcom/google/android/gms/internal/measurement/zzjo;Lcom/google/android/gms/internal/measurement/zziq;Lcom/google/android/gms/internal/measurement/zzkn;Lcom/google/android/gms/internal/measurement/zzhk;Lcom/google/android/gms/internal/measurement/zziz;)Lcom/google/android/gms/internal/measurement/zzjk;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzje;",
            "Lcom/google/android/gms/internal/measurement/zzjo;",
            "Lcom/google/android/gms/internal/measurement/zziq;",
            "Lcom/google/android/gms/internal/measurement/zzkn<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzhk<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zziz;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzjk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzjt;

    if-eqz v1, :cond_35

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/measurement/zzhv$zze;->zzi:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 33
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    goto :goto_3

    :cond_4
    move v10, v5

    :goto_3
    if-nez v7, :cond_5

    .line 49
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzjk;->zza:[I

    move-object v15, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_11

    :cond_5
    add-int/lit8 v5, v10, 0x1

    .line 51
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v5, 0x1

    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_4

    :cond_6
    shl-int/2addr v5, v9

    or-int/2addr v5, v7

    goto :goto_5

    :cond_7
    move v10, v5

    move v5, v7

    :goto_5
    add-int/lit8 v7, v10, 0x1

    .line 60
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_6
    add-int/lit8 v12, v7, 0x1

    .line 64
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    add-int/lit8 v10, v10, 0xd

    move v7, v12

    goto :goto_6

    :cond_8
    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    goto :goto_7

    :cond_9
    move v12, v7

    :goto_7
    add-int/lit8 v7, v12, 0x1

    .line 69
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_8
    add-int/lit8 v13, v7, 0x1

    .line 73
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v12

    or-int/2addr v10, v7

    add-int/lit8 v12, v12, 0xd

    move v7, v13

    goto :goto_8

    :cond_a
    shl-int/2addr v7, v12

    or-int/2addr v7, v10

    move v10, v7

    goto :goto_9

    :cond_b
    move v13, v7

    :goto_9
    add-int/lit8 v7, v13, 0x1

    .line 78
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_a
    add-int/lit8 v14, v7, 0x1

    .line 82
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_c

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v13

    or-int/2addr v12, v7

    add-int/lit8 v13, v13, 0xd

    move v7, v14

    goto :goto_a

    :cond_c
    shl-int/2addr v7, v13

    or-int/2addr v7, v12

    move v12, v7

    goto :goto_b

    :cond_d
    move v14, v7

    :goto_b
    add-int/lit8 v7, v14, 0x1

    .line 87
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_c
    add-int/lit8 v15, v7, 0x1

    .line 91
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_e

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v14

    or-int/2addr v13, v7

    add-int/lit8 v14, v14, 0xd

    move v7, v15

    goto :goto_c

    :cond_e
    shl-int/2addr v7, v14

    or-int/2addr v7, v13

    move v13, v7

    goto :goto_d

    :cond_f
    move v15, v7

    :goto_d
    add-int/lit8 v7, v15, 0x1

    .line 96
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_e
    add-int/lit8 v16, v7, 0x1

    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_10

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v15

    or-int/2addr v14, v7

    add-int/lit8 v15, v15, 0xd

    move/from16 v7, v16

    goto :goto_e

    :cond_10
    shl-int/2addr v7, v15

    or-int/2addr v7, v14

    move v14, v7

    move/from16 v7, v16

    :cond_11
    add-int/lit8 v15, v7, 0x1

    .line 105
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_13

    and-int/lit16 v7, v7, 0x1fff

    const/16 v16, 0xd

    :goto_f
    add-int/lit8 v17, v15, 0x1

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v7, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_f

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v7, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    .line 114
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v32, v16

    move/from16 v16, v15

    move/from16 v15, v32

    :goto_10
    add-int/lit8 v18, v15, 0x1

    .line 118
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_10

    :cond_14
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v16, v18

    :cond_15
    add-int v17, v15, v14

    add-int v7, v17, v7

    .line 123
    new-array v7, v7, [I

    shl-int/lit8 v17, v5, 0x1

    add-int v9, v17, v9

    move/from16 v32, v16

    move/from16 v16, v5

    move v5, v14

    move v14, v15

    move-object v15, v7

    move v7, v9

    move v9, v10

    move/from16 v10, v32

    .line 125
    :goto_11
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zze()[Ljava/lang/Object;

    move-result-object v17

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v6, v13, 0x3

    .line 129
    new-array v6, v6, [I

    shl-int/2addr v13, v4

    .line 130
    new-array v13, v13, [Ljava/lang/Object;

    add-int v19, v14, v5

    move/from16 v21, v14

    move/from16 v22, v19

    const/4 v5, 0x0

    const/16 v20, 0x0

    :goto_12
    if-ge v10, v2, :cond_34

    add-int/lit8 v23, v10, 0x1

    .line 135
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v4, 0xd800

    if-lt v10, v4, :cond_17

    and-int/lit16 v10, v10, 0x1fff

    const/16 v25, 0xd

    move/from16 v32, v23

    move/from16 v23, v10

    move/from16 v10, v32

    :goto_13
    add-int/lit8 v26, v10, 0x1

    .line 139
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v4, :cond_16

    and-int/lit16 v4, v10, 0x1fff

    shl-int v4, v4, v25

    or-int v23, v23, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v10, v26

    const v4, 0xd800

    goto :goto_13

    :cond_16
    shl-int v4, v10, v25

    or-int v10, v23, v4

    move/from16 v4, v26

    goto :goto_14

    :cond_17
    move/from16 v4, v23

    :goto_14
    add-int/lit8 v23, v4, 0x1

    .line 144
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    const/16 v26, 0xd

    move/from16 v32, v23

    move/from16 v23, v4

    move/from16 v4, v32

    :goto_15
    add-int/lit8 v27, v4, 0x1

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_18

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v26

    or-int v23, v23, v2

    add-int/lit8 v26, v26, 0xd

    move/from16 v4, v27

    const v2, 0xd800

    goto :goto_15

    :cond_18
    shl-int v2, v4, v26

    or-int v4, v23, v2

    move/from16 v2, v27

    goto :goto_16

    :cond_19
    move/from16 v2, v23

    :goto_16
    move/from16 v23, v14

    and-int/lit16 v14, v4, 0xff

    move/from16 v26, v12

    and-int/lit16 v12, v4, 0x400

    if-eqz v12, :cond_1a

    add-int/lit8 v12, v5, 0x1

    .line 155
    aput v20, v15, v5

    move v5, v12

    :cond_1a
    const/16 v12, 0x33

    move/from16 v29, v5

    if-lt v14, v12, :cond_22

    add-int/lit8 v12, v2, 0x1

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v5, 0xd800

    if-lt v2, v5, :cond_1c

    and-int/lit16 v2, v2, 0x1fff

    const/16 v30, 0xd

    :goto_17
    add-int/lit8 v31, v12, 0x1

    .line 161
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_1b

    and-int/lit16 v5, v12, 0x1fff

    shl-int v5, v5, v30

    or-int/2addr v2, v5

    add-int/lit8 v30, v30, 0xd

    move/from16 v12, v31

    const v5, 0xd800

    goto :goto_17

    :cond_1b
    shl-int v5, v12, v30

    or-int/2addr v2, v5

    move/from16 v12, v31

    :cond_1c
    add-int/lit8 v5, v14, -0x33

    move/from16 v30, v12

    const/16 v12, 0x9

    if-eq v5, v12, :cond_1f

    const/16 v12, 0x11

    if-ne v5, v12, :cond_1d

    goto :goto_18

    :cond_1d
    const/16 v12, 0xc

    if-ne v5, v12, :cond_1e

    if-nez v11, :cond_1e

    .line 171
    div-int/lit8 v5, v20, 0x3

    const/4 v12, 0x1

    shl-int/2addr v5, v12

    add-int/2addr v5, v12

    add-int/lit8 v12, v7, 0x1

    aget-object v7, v17, v7

    aput-object v7, v13, v5

    move v7, v12

    const/4 v12, 0x1

    goto :goto_19

    :cond_1e
    const/4 v12, 0x1

    goto :goto_19

    .line 168
    :cond_1f
    :goto_18
    div-int/lit8 v5, v20, 0x3

    const/4 v12, 0x1

    shl-int/2addr v5, v12

    add-int/2addr v5, v12

    add-int/lit8 v24, v7, 0x1

    aget-object v7, v17, v7

    aput-object v7, v13, v5

    move/from16 v7, v24

    :goto_19
    shl-int/2addr v2, v12

    .line 173
    aget-object v5, v17, v2

    .line 174
    instance-of v12, v5, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_20

    .line 175
    check-cast v5, Ljava/lang/reflect/Field;

    move-object v12, v6

    goto :goto_1a

    .line 176
    :cond_20
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 177
    aput-object v5, v17, v2

    move-object v12, v6

    .line 178
    :goto_1a
    invoke-virtual {v3, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v6, v5

    add-int/lit8 v2, v2, 0x1

    .line 180
    aget-object v5, v17, v2

    move/from16 v27, v6

    .line 181
    instance-of v6, v5, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_21

    .line 182
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_1b

    .line 183
    :cond_21
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 184
    aput-object v5, v17, v2

    .line 185
    :goto_1b
    invoke-virtual {v3, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v2, v5

    move v5, v2

    move-object/from16 v18, v8

    move/from16 v6, v27

    move/from16 v28, v30

    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_22
    move-object v12, v6

    add-int/lit8 v5, v7, 0x1

    .line 188
    aget-object v6, v17, v7

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/16 v7, 0x9

    if-eq v14, v7, :cond_2a

    const/16 v7, 0x11

    if-ne v14, v7, :cond_23

    goto :goto_1e

    :cond_23
    const/16 v7, 0x1b

    if-eq v14, v7, :cond_29

    const/16 v7, 0x31

    if-ne v14, v7, :cond_24

    goto :goto_1d

    :cond_24
    const/16 v7, 0xc

    if-eq v14, v7, :cond_27

    const/16 v7, 0x1e

    if-eq v14, v7, :cond_27

    const/16 v7, 0x2c

    if-ne v14, v7, :cond_25

    goto :goto_1c

    :cond_25
    const/16 v7, 0x32

    if-ne v14, v7, :cond_2b

    add-int/lit8 v7, v21, 0x1

    .line 197
    aput v20, v15, v21

    .line 198
    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v21

    and-int/lit16 v5, v4, 0x800

    if-eqz v5, :cond_26

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v5, v27, 0x1

    .line 200
    aget-object v27, v17, v27

    aput-object v27, v13, v21

    move/from16 v27, v5

    move/from16 v21, v7

    goto :goto_20

    :cond_26
    move/from16 v21, v7

    goto :goto_20

    :cond_27
    :goto_1c
    if-nez v11, :cond_28

    .line 195
    div-int/lit8 v7, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v7

    goto :goto_20

    :cond_28
    const/16 v24, 0x1

    goto :goto_1f

    :cond_29
    :goto_1d
    const/16 v24, 0x1

    .line 192
    div-int/lit8 v7, v20, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v27, v5, 0x1

    aget-object v5, v17, v5

    aput-object v5, v13, v7

    goto :goto_20

    :cond_2a
    :goto_1e
    const/16 v24, 0x1

    .line 190
    div-int/lit8 v7, v20, 0x3

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v13, v7

    :cond_2b
    :goto_1f
    move/from16 v27, v5

    .line 201
    :goto_20
    invoke-virtual {v3, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v6, v5

    and-int/lit16 v5, v4, 0x1000

    const/16 v7, 0x1000

    if-ne v5, v7, :cond_30

    const/16 v5, 0x11

    if-gt v14, v5, :cond_2f

    add-int/lit8 v5, v2, 0x1

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v7, 0xd800

    if-lt v2, v7, :cond_2d

    and-int/lit16 v2, v2, 0x1fff

    const/16 v18, 0xd

    :goto_21
    add-int/lit8 v28, v5, 0x1

    .line 208
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_2c

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v18

    or-int/2addr v2, v5

    add-int/lit8 v18, v18, 0xd

    move/from16 v5, v28

    goto :goto_21

    :cond_2c
    shl-int v5, v5, v18

    or-int/2addr v2, v5

    const/4 v5, 0x1

    goto :goto_22

    :cond_2d
    move/from16 v28, v5

    const/4 v5, 0x1

    :goto_22
    shl-int/lit8 v18, v16, 0x1

    .line 213
    div-int/lit8 v24, v2, 0x20

    add-int v18, v18, v24

    .line 214
    aget-object v5, v17, v18

    .line 215
    instance-of v7, v5, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_2e

    .line 216
    check-cast v5, Ljava/lang/reflect/Field;

    move-object/from16 v18, v8

    goto :goto_23

    .line 217
    :cond_2e
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 218
    aput-object v5, v17, v18

    move-object/from16 v18, v8

    .line 219
    :goto_23
    invoke-virtual {v3, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v5, v7

    .line 220
    rem-int/lit8 v2, v2, 0x20

    goto :goto_25

    :cond_2f
    move-object/from16 v18, v8

    goto :goto_24

    :cond_30
    move-object/from16 v18, v8

    :goto_24
    const v5, 0xfffff

    move/from16 v28, v2

    const/4 v2, 0x0

    :goto_25
    const/16 v7, 0x12

    if-lt v14, v7, :cond_31

    const/16 v7, 0x31

    if-gt v14, v7, :cond_31

    add-int/lit8 v7, v22, 0x1

    .line 225
    aput v6, v15, v22

    move/from16 v22, v7

    move/from16 v7, v27

    goto :goto_26

    :cond_31
    move/from16 v7, v27

    :goto_26
    add-int/lit8 v8, v20, 0x1

    .line 226
    aput v10, v12, v20

    add-int/lit8 v10, v8, 0x1

    move-object/from16 v20, v1

    and-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_27

    :cond_32
    const/4 v1, 0x0

    :goto_27
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_33

    const/high16 v4, 0x10000000

    goto :goto_28

    :cond_33
    const/4 v4, 0x0

    :goto_28
    or-int/2addr v1, v4

    shl-int/lit8 v4, v14, 0x14

    or-int/2addr v1, v4

    or-int/2addr v1, v6

    .line 229
    aput v1, v12, v8

    add-int/lit8 v1, v10, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v5

    .line 230
    aput v2, v12, v10

    move-object v6, v12

    move-object/from16 v8, v18

    move/from16 v14, v23

    move/from16 v2, v25

    move/from16 v12, v26

    move/from16 v10, v28

    move/from16 v5, v29

    const/4 v4, 0x1

    move-object/from16 v32, v20

    move/from16 v20, v1

    move-object/from16 v1, v32

    goto/16 :goto_12

    :cond_34
    move/from16 v26, v12

    move/from16 v23, v14

    move-object v12, v6

    .line 232
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjk;

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzc()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v10

    const/4 v0, 0x0

    move-object v5, v1

    move-object v7, v13

    move v8, v9

    move/from16 v9, v26

    move v12, v0

    move-object v13, v15

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/measurement/zzjk;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzjg;ZZ[IIILcom/google/android/gms/internal/measurement/zzjo;Lcom/google/android/gms/internal/measurement/zziq;Lcom/google/android/gms/internal/measurement/zzkn;Lcom/google/android/gms/internal/measurement/zzhk;Lcom/google/android/gms/internal/measurement/zziz;)V

    return-object v1

    .line 235
    :cond_35
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkk;

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzhv$zze;->zzi:I

    .line 237
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    return-void
.end method

.method private final zza(I)Lcom/google/android/gms/internal/measurement/zzjv;
    .locals 3

    .line 3438
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3439
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjv;

    if-eqz v0, :cond_0

    return-object v0

    .line 3442
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjr;->zza()Lcom/google/android/gms/internal/measurement/zzjr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjr;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    .line 3443
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzic;",
            "TUB;",
            "Lcom/google/android/gms/internal/measurement/zzkn<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3829
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 3830
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zziz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object p1

    .line 3831
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3832
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3833
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    .line 3835
    invoke-virtual {p6}, Lcom/google/android/gms/internal/measurement/zzkn;->zza()Ljava/lang/Object;

    move-result-object p5

    .line 3837
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zziy;->zza(Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3838
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgm;->zzc(I)Lcom/google/android/gms/internal/measurement/zzgu;

    move-result-object v1

    .line 3839
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgu;->zzb()Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v2

    .line 3840
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/measurement/zziy;->zza(Lcom/google/android/gms/internal/measurement/zzhf;Lcom/google/android/gms/internal/measurement/zzix;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3844
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgu;->zza()Lcom/google/android/gms/internal/measurement/zzgm;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzgm;)V

    .line 3845
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3843
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/measurement/zzkn<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3814
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v3, v0, p2

    .line 3816
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3819
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 3822
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    .line 3825
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 3827
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 240
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 241
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private static zza(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1158
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3918
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3919
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILjava/lang/String;)V

    return-void

    .line 3920
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzgm;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzkn<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/measurement/zzlk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2410
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzlk;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzlk;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2405
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 2406
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/measurement/zziz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 2407
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/measurement/zziz;->zzb(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2408
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzix;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3922
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3925
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 3926
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzi:Z

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3929
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 3932
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzn()Lcom/google/android/gms/internal/measurement/zzgm;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 542
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 545
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 547
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 548
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 549
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 551
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 552
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 3946
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 3949
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3979
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3978
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 3977
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 3976
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 3975
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 3974
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 3973
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 3972
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 3971
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 3970
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 3964
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 3965
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 3966
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 3967
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz p2, :cond_c

    .line 3968
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgm;->zza:Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzgm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 3969
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3963
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3962
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 3961
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 3960
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 3959
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 3958
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 3957
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 3956
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v5

    :cond_13
    return v4

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 3981
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 3991
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3992
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 3944
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjv;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 3916
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 3917
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/zzjv;->zzd(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzb(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 3937
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final zzb(II)I
    .locals 4

    .line 4002
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 4007
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private final zzb(I)Ljava/lang/Object;
    .locals 1

    .line 3445
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 3982
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    .line 3988
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 3989
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 3993
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3994
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2080
    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v3, :cond_0

    .line 2081
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v3

    .line 2083
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2085
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzho;->zzd()Ljava/util/Iterator;

    move-result-object v3

    .line 2086
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2089
    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v6, v6

    .line 2090
    sget-object v7, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    move-object v11, v5

    const/4 v5, 0x0

    const v10, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v5, v6, :cond_18

    .line 2092
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v13

    .line 2094
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v15, v14, v5

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    .line 2100
    iget-boolean v9, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzj:Z

    if-nez v9, :cond_2

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v5, 0x2

    .line 2101
    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v10, :cond_1

    move-object v14, v11

    int-to-long v10, v8

    .line 2105
    invoke-virtual {v7, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_2

    :cond_1
    move-object v14, v11

    move v8, v10

    :goto_2
    ushr-int/lit8 v9, v9, 0x14

    const/4 v10, 0x1

    shl-int v9, v10, v9

    move v10, v8

    move-object v11, v14

    goto :goto_3

    :cond_2
    move-object v14, v11

    move-object v11, v14

    const/4 v9, 0x0

    :goto_3
    if-eqz v11, :cond_4

    .line 2107
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v15, :cond_4

    .line 2108
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v8, v2, v11}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/util/Map$Entry;)V

    .line 2109
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v11, v8

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    const v8, 0xfffff

    and-int/2addr v13, v8

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2394
    :pswitch_0
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2396
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v9

    .line 2397
    invoke-interface {v2, v15, v4, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2392
    :pswitch_1
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2393
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(IJ)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2390
    :pswitch_2
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2391
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzf(II)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2388
    :pswitch_3
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2389
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(IJ)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2386
    :pswitch_4
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2387
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(II)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2384
    :pswitch_5
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2385
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(II)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2382
    :pswitch_6
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2383
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(II)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2380
    :pswitch_7
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2381
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzgm;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2376
    :pswitch_8
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2377
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2378
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v9

    invoke-interface {v2, v15, v4, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2374
    :pswitch_9
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2375
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2372
    :pswitch_a
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2373
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IZ)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2370
    :pswitch_b
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2371
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(II)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2368
    :pswitch_c
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2369
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(IJ)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2366
    :pswitch_d
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2367
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(II)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2364
    :pswitch_e
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2365
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(IJ)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2362
    :pswitch_f
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2363
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IJ)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2360
    :pswitch_10
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2361
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IF)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2358
    :pswitch_11
    invoke-direct {v0, v1, v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2359
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ID)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2356
    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;ILjava/lang/Object;I)V

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2350
    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2352
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2353
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v13

    .line 2354
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzjv;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2344
    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2345
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x1

    .line 2346
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_15
    const/4 v15, 0x1

    .line 2338
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2339
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2340
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_16
    const/4 v15, 0x1

    .line 2332
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2333
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2334
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_17
    const/4 v15, 0x1

    .line 2326
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2327
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2328
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_18
    const/4 v15, 0x1

    .line 2320
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2321
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2322
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_19
    const/4 v15, 0x1

    .line 2314
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2315
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2316
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_1a
    const/4 v15, 0x1

    .line 2308
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2309
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2310
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_1b
    const/4 v15, 0x1

    .line 2302
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2303
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2304
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_1c
    const/4 v15, 0x1

    .line 2296
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2297
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2298
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_1d
    const/4 v15, 0x1

    .line 2290
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2291
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2292
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_1e
    const/4 v15, 0x1

    .line 2284
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2285
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2286
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_1f
    const/4 v15, 0x1

    .line 2278
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2279
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2280
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_20
    const/4 v15, 0x1

    .line 2272
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2273
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2274
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_21
    const/4 v15, 0x1

    .line 2266
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2267
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2268
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2260
    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2261
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    .line 2262
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_23
    const/4 v15, 0x0

    .line 2254
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2255
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2256
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_24
    const/4 v15, 0x0

    .line 2248
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2249
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2250
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_25
    const/4 v15, 0x0

    .line 2242
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2243
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2244
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_26
    const/4 v15, 0x0

    .line 2236
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2237
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2238
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_27
    const/4 v15, 0x0

    .line 2230
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2231
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2232
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2224
    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2225
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2226
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2216
    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2218
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2219
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v13

    .line 2220
    invoke-static {v4, v9, v2, v13}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzjv;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2210
    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2211
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2212
    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;)V

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2204
    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2205
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    .line 2206
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_2c
    const/4 v15, 0x0

    .line 2198
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2199
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2200
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_2d
    const/4 v15, 0x0

    .line 2192
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2193
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2194
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_2e
    const/4 v15, 0x0

    .line 2186
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2187
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2188
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_2f
    const/4 v15, 0x0

    .line 2180
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2181
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2182
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_30
    const/4 v15, 0x0

    .line 2174
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2175
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2176
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_31
    const/4 v15, 0x0

    .line 2168
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2169
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2170
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_32
    const/4 v15, 0x0

    .line 2162
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v5

    .line 2163
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2164
    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2158
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v13

    .line 2159
    invoke-interface {v2, v15, v9, v13}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2155
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2153
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzf(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2151
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2149
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2147
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2145
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2143
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzgm;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2139
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2140
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v13

    invoke-interface {v2, v15, v9, v13}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2137
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v15, v9, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto :goto_4

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2134
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    .line 2135
    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2131
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2129
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2127
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(II)V

    goto :goto_4

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2125
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2123
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2120
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result v9

    .line 2121
    invoke-interface {v2, v15, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v9, v12

    if-eqz v9, :cond_17

    .line 2116
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 2117
    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ID)V

    :cond_17
    :goto_4
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_18
    move-object v14, v11

    :goto_5
    if-eqz v14, :cond_1a

    .line 2400
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v4, v2, v14}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/util/Map$Entry;)V

    .line 2401
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v14, v4

    goto :goto_5

    :cond_19
    const/4 v14, 0x0

    goto :goto_5

    .line 2402
    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 554
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 561
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 564
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 566
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 567
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 568
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 570
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static zzc(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 3938
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzc(I)Lcom/google/android/gms/internal/measurement/zzic;
    .locals 1

    .line 3446
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzic;

    return-object p1
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 3942
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzd(I)I
    .locals 1

    .line 3934
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzd(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 3939
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zze(I)I
    .locals 1

    .line 3935
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 3940
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkq;
    .locals 2

    .line 2925
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zzb:Lcom/google/android/gms/internal/measurement/zzkq;

    .line 2926
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkq;->zza()Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2927
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkq;->zzb()Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v0

    .line 2928
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zzb:Lcom/google/android/gms/internal/measurement/zzkq;

    :cond_0
    return-object v0
.end method

.method private static zzf(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 3941
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzg(I)I
    .locals 1

    .line 3996
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 3997
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 349
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v3

    .line 351
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 447
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 449
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 445
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 443
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 441
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 439
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 440
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 437
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 438
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 435
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 433
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 434
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 429
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 431
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 426
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 428
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 424
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 425
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 422
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 423
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 420
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 421
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 418
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 419
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 416
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 417
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 414
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 415
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 412
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 413
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 409
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 411
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 407
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 405
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 400
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 397
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 395
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 393
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 391
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 389
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 387
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 385
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 380
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_1

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 377
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 375
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 373
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 371
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 369
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 367
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 365
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 363
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 360
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 361
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v2, v2, 0x35

    .line 451
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 452
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, 0x35

    .line 453
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzho;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzgl;)I
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/measurement/zzgl;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 3447
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1f

    add-int/lit8 v3, v0, 0x1

    .line 3454
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3456
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3457
    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v1, :cond_1

    .line 3461
    div-int/2addr v2, v8

    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(II)I

    move-result v1

    move v2, v1

    const/4 v1, -0x1

    goto :goto_2

    .line 3462
    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzg(I)I

    move-result v1

    move v2, v1

    const/4 v1, -0x1

    :goto_2
    if-ne v2, v1, :cond_2

    move/from16 p3, v0

    move v2, v3

    move v7, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v26, v10

    move v6, v11

    const/16 v17, 0x0

    const/16 v18, -0x1

    goto/16 :goto_d

    .line 3466
    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    add-int/lit8 v19, v2, 0x1

    aget v8, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v4

    const v17, 0xfffff

    and-int v4, v8, v17

    int-to-long v12, v4

    const/16 v4, 0x11

    move/from16 v20, v8

    if-gt v11, v4, :cond_f

    add-int/lit8 v4, v2, 0x2

    .line 3474
    aget v1, v1, v4

    ushr-int/lit8 v4, v1, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v4

    const v4, 0xfffff

    and-int/2addr v1, v4

    if-eq v1, v6, :cond_4

    if-eq v6, v4, :cond_3

    int-to-long v8, v6

    .line 3479
    invoke-virtual {v10, v14, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v1

    .line 3481
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v8, v1

    move v6, v5

    goto :goto_3

    :cond_4
    move v8, v6

    move v6, v5

    :goto_3
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    goto/16 :goto_9

    :pswitch_0
    const/4 v5, 0x3

    if-ne v7, v5, :cond_6

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    .line 3568
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    move v9, v0

    move-object v0, v1

    const/16 v18, -0x1

    move-object/from16 v1, p2

    move v11, v2

    move v2, v3

    move/from16 v3, p4

    move/from16 v7, v19

    const v19, 0xfffff

    move v4, v5

    move-object/from16 v5, p6

    .line 3569
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_5

    move-object/from16 v4, p6

    .line 3571
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move-object/from16 v4, p6

    .line 3573
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    .line 3574
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3575
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v5, v6, v22

    move v3, v7

    move v6, v8

    move v1, v9

    move v2, v11

    move/from16 v11, p5

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object v9, v4

    goto/16 :goto_0

    :cond_6
    move v9, v0

    move v11, v2

    move/from16 v7, v19

    const/16 v18, -0x1

    const v19, 0xfffff

    move/from16 p3, v8

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v8, v7

    goto/16 :goto_9

    :pswitch_1
    move v9, v0

    move v11, v2

    move/from16 v5, v19

    move-object/from16 v4, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-nez v7, :cond_7

    move-wide v1, v12

    move-object/from16 v12, p2

    .line 3559
    invoke-static {v12, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v7

    move-wide/from16 v20, v1

    .line 3560
    iget-wide v0, v4, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    .line 3561
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgy;->zza(J)J

    move-result-wide v23

    move-object v0, v10

    move-wide/from16 v2, v20

    move-object/from16 v1, p1

    move-object v13, v4

    move/from16 p3, v8

    move v8, v5

    move-wide/from16 v4, v23

    .line 3562
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v7

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_7
    move-object v13, v4

    move/from16 p3, v8

    move-object/from16 v12, p2

    move v8, v5

    goto/16 :goto_9

    :pswitch_2
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-nez v7, :cond_e

    .line 3552
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3553
    iget v1, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    .line 3554
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgy;->zze(I)I

    move-result v1

    .line 3555
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_3
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-nez v7, :cond_e

    .line 3543
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3544
    iget v1, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    .line 3545
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3546
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 3549
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/measurement/zzkq;->zza(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    move/from16 v6, p3

    goto/16 :goto_0

    .line 3547
    :cond_9
    :goto_5
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_4
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x2

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-ne v7, v0, :cond_e

    .line 3538
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zze([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3539
    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_5
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x2

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-ne v7, v0, :cond_b

    .line 3527
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    move/from16 v2, p4

    .line 3528
    invoke-static {v0, v12, v3, v2, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_a

    .line 3530
    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 3532
    :cond_a
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    .line 3533
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3534
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move-object v9, v13

    move v13, v2

    move v2, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_b
    move/from16 v2, p4

    goto/16 :goto_9

    :pswitch_6
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x2

    move/from16 v2, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-ne v7, v0, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_c

    .line 3520
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    goto :goto_7

    .line 3521
    :cond_c
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3522
    :goto_7
    iget-object v1, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move-object v9, v13

    move v13, v2

    move v2, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_7
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    move/from16 v2, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-nez v7, :cond_e

    .line 3514
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    move v3, v0

    .line 3515
    iget-wide v0, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    const-wide/16 v20, 0x0

    cmp-long v7, v0, v20

    if-eqz v7, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JZ)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v3

    move v3, v8

    move v1, v9

    move-object v9, v13

    move v13, v2

    move v2, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_8
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    move/from16 v2, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-ne v7, v1, :cond_e

    .line 3509
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move-object v9, v13

    move v13, v2

    move v2, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :pswitch_9
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x1

    move/from16 v2, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-ne v7, v0, :cond_e

    .line 3504
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BI)J

    move-result-wide v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_a
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-nez v7, :cond_e

    .line 3499
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3500
    iget v1, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_b
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-nez v7, :cond_e

    .line 3494
    invoke-static {v12, v3, v13}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v7

    .line 3495
    iget-wide v2, v13, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v7

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_c
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-ne v7, v1, :cond_e

    .line 3489
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BI)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v3, 0x4

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_d
    move v9, v0

    move v11, v2

    move/from16 p3, v8

    move-wide v4, v12

    move/from16 v8, v19

    const/4 v0, 0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    const/16 v18, -0x1

    const v19, 0xfffff

    if-ne v7, v0, :cond_e

    .line 3484
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    or-int v5, v6, v22

    move/from16 v6, p3

    move v3, v8

    move v1, v9

    move v2, v11

    move-object v9, v13

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_e
    :goto_9
    move/from16 v23, p3

    move v2, v3

    move/from16 v22, v6

    move v7, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    move/from16 v17, v11

    move/from16 v6, p5

    goto/16 :goto_d

    :cond_f
    move v4, v2

    move-wide v1, v12

    move/from16 v8, v19

    move-object/from16 v12, p2

    const/16 v18, -0x1

    const v19, 0xfffff

    move-object v13, v9

    move v9, v0

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_13

    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    .line 3580
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzid;

    .line 3581
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zza()Z

    move-result v7

    if-nez v7, :cond_11

    .line 3582
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_10

    const/16 v7, 0xa

    goto :goto_a

    :cond_10
    shl-int/lit8 v7, v7, 0x1

    .line 3585
    :goto_a
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/measurement/zzid;->zza(I)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0

    .line 3586
    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v0

    goto :goto_b

    :cond_11
    move-object v7, v0

    .line 3588
    :goto_b
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move/from16 v17, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v7

    move/from16 v23, v6

    move-object/from16 v6, p6

    .line 3589
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;I[BIILcom/google/android/gms/internal/measurement/zzid;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    move v3, v8

    move v1, v9

    move-object v9, v13

    move/from16 v2, v17

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v11, p5

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_12
    move/from16 v17, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move v15, v3

    move/from16 v19, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    goto/16 :goto_c

    :cond_13
    move/from16 v17, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v0, 0x31

    if-gt v11, v0, :cond_15

    move/from16 v6, v20

    int-to-long v5, v6

    move-object/from16 v0, p0

    move-wide/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v20, v5

    move v5, v8

    move v6, v9

    move/from16 v19, v8

    move/from16 v8, v17

    move/from16 p3, v9

    move-object/from16 v26, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    .line 3594
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    if-ne v0, v15, :cond_14

    move v2, v0

    move/from16 v7, v19

    move/from16 v6, p5

    goto/16 :goto_d

    :cond_14
    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v10, v26

    move-object/from16 v9, p6

    move/from16 v11, p5

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_15
    move-wide/from16 v24, v1

    move v15, v3

    move/from16 v19, v8

    move/from16 p3, v9

    move-object/from16 v26, v10

    move/from16 v6, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_18

    const/4 v0, 0x2

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move-wide/from16 v6, v24

    move-object/from16 v8, p6

    .line 3599
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    if-ne v0, v15, :cond_16

    move v2, v0

    move/from16 v7, v19

    move/from16 v6, p5

    goto :goto_d

    :cond_16
    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v2, v17

    move/from16 v3, v19

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v10, v26

    move-object/from16 v9, p6

    move/from16 v11, p5

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_17
    :goto_c
    move v2, v15

    move/from16 v7, v19

    move/from16 v6, p5

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move v8, v6

    move/from16 v6, p3

    move v9, v11

    move-wide/from16 v10, v24

    move/from16 v12, v17

    move-object/from16 v13, p6

    .line 3604
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    if-ne v0, v15, :cond_1e

    move v2, v0

    move/from16 v7, v19

    move/from16 v6, p5

    :goto_d
    if-ne v7, v6, :cond_1a

    if-nez v6, :cond_19

    goto :goto_e

    :cond_19
    move v3, v7

    move/from16 v1, v22

    move/from16 v0, v23

    const v4, 0xfffff

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    goto/16 :goto_10

    :cond_1a
    :goto_e
    move-object/from16 v8, p0

    .line 3607
    iget-boolean v0, v8, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_1d

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzd:Lcom/google/android/gms/internal/measurement/zzhi;

    .line 3608
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhi;->zza()Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 3609
    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/zzjk;->zzg:Lcom/google/android/gms/internal/measurement/zzjg;

    .line 3611
    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/zzgl;->zzd:Lcom/google/android/gms/internal/measurement/zzhi;

    move/from16 v10, p3

    .line 3612
    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Lcom/google/android/gms/internal/measurement/zzjg;I)Lcom/google/android/gms/internal/measurement/zzhv$zzf;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 3615
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3616
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzkq;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    move-object/from16 v12, p2

    move v11, v6

    move v3, v7

    move-object v15, v8

    move v1, v10

    move/from16 v2, v17

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v10, v26

    move/from16 v13, p4

    move-object/from16 v14, p1

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v11, p1

    .line 3617
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzho;

    .line 3619
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhv$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzho;

    .line 3620
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_1c
    move/from16 v10, p3

    move-object/from16 v11, p1

    goto :goto_f

    :cond_1d
    move/from16 v10, p3

    move-object/from16 v9, p6

    move-object/from16 v11, p1

    .line 3623
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 3624
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzkq;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    move-object/from16 v12, p2

    move v3, v7

    move-object v15, v8

    move v1, v10

    move-object v14, v11

    move/from16 v2, v17

    move/from16 v5, v22

    move-object/from16 v10, v26

    move/from16 v13, p4

    move v11, v6

    move/from16 v6, v23

    goto/16 :goto_0

    :cond_1e
    move/from16 v10, p3

    move/from16 v7, v19

    move-object/from16 v12, p2

    move v3, v7

    move v1, v10

    move/from16 v2, v17

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v10, v26

    move-object/from16 v9, p6

    move/from16 v11, p5

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1f
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v26, v10

    move v6, v11

    move-object v11, v14

    move-object v8, v15

    move v2, v0

    move/from16 v1, v22

    move/from16 v0, v23

    const v4, 0xfffff

    :goto_10
    if-eq v0, v4, :cond_20

    int-to-long v4, v0

    move-object/from16 v0, v26

    .line 3627
    invoke-virtual {v0, v11, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    const/4 v0, 0x0

    .line 3629
    iget v1, v8, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    :goto_11
    iget v4, v8, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    if-ge v1, v4, :cond_21

    .line 3630
    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget v4, v4, v1

    iget-object v5, v8, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    .line 3631
    invoke-direct {v8, v11, v4, v0, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkq;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    if-eqz v0, :cond_22

    .line 3634
    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    .line 3635
    invoke-virtual {v1, v11, v0}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    if-nez v6, :cond_24

    move/from16 v0, p4

    if-ne v2, v0, :cond_23

    goto :goto_12

    .line 3638
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzg()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    throw v0

    :cond_24
    move/from16 v0, p4

    if-gt v2, v0, :cond_25

    if-ne v3, v6, :cond_25

    :goto_12
    return v2

    .line 3640
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzg()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    throw v0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzo:Lcom/google/android/gms/internal/measurement/zzjo;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzg:Lcom/google/android/gms/internal/measurement/zzjg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjo;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjw;Lcom/google/android/gms/internal/measurement/zzhi;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzjw;",
            "Lcom/google/android/gms/internal/measurement/zzhi;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1d

    .line 2414
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    const/4 v9, 0x0

    move-object v0, v9

    move-object v10, v0

    .line 2417
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zza()I

    move-result v1

    .line 2418
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzg(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_a

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 2421
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    if-ge p2, p3, :cond_1

    .line 2422
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget p3, p3, p2

    .line 2423
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    .line 2426
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 2428
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-nez v2, :cond_4

    move-object v2, v9

    goto :goto_2

    .line 2430
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzg:Lcom/google/android/gms/internal/measurement/zzjg;

    invoke-virtual {v8, p3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzhi;Lcom/google/android/gms/internal/measurement/zzjg;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    .line 2433
    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_5
    move-object v11, v0

    :goto_3
    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-object v4, v11

    move-object v5, v10

    move-object v6, v7

    .line 2435
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzjw;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzhi;Lcom/google/android/gms/internal/measurement/zzho;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v11

    goto :goto_0

    .line 2437
    :cond_6
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Lcom/google/android/gms/internal/measurement/zzjw;)Z

    if-nez v10, :cond_7

    .line 2439
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2440
    :cond_7
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjw;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 2441
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    :goto_4
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    if-ge p2, p3, :cond_8

    .line 2442
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget p3, p3, p2

    .line 2443
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_8
    if-eqz v10, :cond_9

    .line 2446
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 2448
    :cond_a
    :try_start_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    const v5, 0xfffff

    packed-switch v4, :pswitch_data_0

    if-nez v10, :cond_15

    .line 2895
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzkn;->zza()Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    :pswitch_0
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2890
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)Ljava/lang/Object;

    move-result-object v5

    .line 2891
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2892
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2883
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2884
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2885
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2877
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzs()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2878
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2879
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2871
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzr()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2872
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2873
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2865
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzq()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2866
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2867
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2853
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzp()I

    move-result v4

    .line 2854
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 2855
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    .line 2861
    :cond_b
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_c
    :goto_5
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2858
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2859
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2849
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2850
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2851
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2844
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzn()Lcom/google/android/gms/internal/measurement/zzgm;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2845
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2822
    :pswitch_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2825
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2826
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    .line 2827
    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)Ljava/lang/Object;

    move-result-object v6

    .line 2828
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2831
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2836
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v5

    .line 2837
    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)Ljava/lang/Object;

    move-result-object v5

    .line 2838
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2839
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    .line 2840
    :goto_6
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2819
    :pswitch_9
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjw;)V

    .line 2820
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2815
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzk()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2816
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2817
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2809
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzj()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2810
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2811
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2803
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzi()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2804
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2805
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2797
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzh()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2798
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2799
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2791
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzf()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2792
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2793
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2785
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzg()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2786
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2787
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2779
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zze()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 2780
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2781
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2773
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 2774
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2775
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2753
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(I)Ljava/lang/Object;

    move-result-object v1

    .line 2754
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    .line 2757
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    .line 2759
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2760
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 2761
    :cond_e
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/zziz;->zzc(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2763
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2764
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v6, v5, v4}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2765
    invoke-static {p1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    .line 2766
    :cond_f
    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 2767
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 2768
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object v1

    .line 2769
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/zzix;Lcom/google/android/gms/internal/measurement/zzhi;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2747
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    .line 2749
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    .line 2750
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2751
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)V

    goto/16 :goto_0

    .line 2739
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2741
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2742
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzq(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2734
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2736
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2737
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2729
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2731
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2732
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2724
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2726
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2727
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2716
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2718
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2719
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzm(Ljava/util/List;)V

    .line 2721
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v2

    .line 2722
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 2711
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2713
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2714
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzl(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2706
    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2708
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2709
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2701
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2703
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2704
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2696
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2698
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2699
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2691
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2693
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2694
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2686
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2688
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2689
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2681
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2683
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2684
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2676
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2678
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2679
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2671
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2673
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2674
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2666
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2668
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2669
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzq(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2661
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2663
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2664
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzp(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2656
    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2658
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2659
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2651
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2653
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2654
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzn(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2643
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2645
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2646
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzm(Ljava/util/List;)V

    .line 2648
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v2

    .line 2649
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 2638
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2640
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2641
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzl(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2633
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2635
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2636
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzk(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2624
    :pswitch_29
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2629
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    .line 2630
    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2631
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Ljava/util/List;Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)V

    goto/16 :goto_0

    .line 2614
    :pswitch_2a
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2615
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2617
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2618
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzj(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2619
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2621
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzi(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2608
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2610
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2611
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2603
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2605
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2606
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzg(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2598
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2600
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2601
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzf(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2593
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2595
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2596
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zze(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2588
    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2590
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2591
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzc(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2583
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2585
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2586
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2578
    :pswitch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2580
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2581
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2573
    :pswitch_32
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2575
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2576
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2554
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_11

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2557
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2558
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    .line 2559
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)Ljava/lang/Object;

    move-result-object v2

    .line 2560
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2563
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2568
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    .line 2569
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)Ljava/lang/Object;

    move-result-object v1

    .line 2570
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2571
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2551
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzt()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 2552
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2546
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzs()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 2547
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2541
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzr()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 2542
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2536
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzq()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 2537
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2524
    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzp()I

    move-result v4

    .line 2525
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(I)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 2526
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_8

    .line 2532
    :cond_12
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_13
    :goto_8
    and-int v1, v3, v5

    int-to-long v5, v1

    .line 2529
    invoke-static {p1, v5, v6, v4}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 2530
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2521
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzo()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 2522
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2516
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzn()Lcom/google/android/gms/internal/measurement/zzgm;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2517
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2495
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_14

    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2498
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2499
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v2

    .line 2500
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)Ljava/lang/Object;

    move-result-object v2

    .line 2501
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2504
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2509
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    .line 2510
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zzjw;->zza(Lcom/google/android/gms/internal/measurement/zzjv;Lcom/google/android/gms/internal/measurement/zzhi;)Ljava/lang/Object;

    move-result-object v1

    .line 2511
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2512
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2492
    :pswitch_3c
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjw;)V

    .line 2493
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2489
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzk()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JZ)V

    .line 2490
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2484
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzj()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 2485
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2479
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzi()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 2480
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2474
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzh()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 2475
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2469
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzf()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 2470
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2464
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzg()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 2465
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2459
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zze()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JF)V

    .line 2460
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2454
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjw;->zzd()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JD)V

    .line 2455
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2896
    :cond_15
    :goto_9
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjw;)Z

    move-result v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/measurement/zzif; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_0

    .line 2897
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    if-ge p2, p3, :cond_16

    .line 2898
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget p3, p3, p2

    .line 2899
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_16
    if-eqz v10, :cond_17

    .line 2902
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    return-void

    .line 2906
    :catch_0
    :try_start_4
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Lcom/google/android/gms/internal/measurement/zzjw;)Z

    if-nez v10, :cond_18

    .line 2908
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    .line 2909
    :cond_18
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjw;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_0

    .line 2910
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    :goto_b
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    if-ge p2, p3, :cond_19

    .line 2911
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget p3, p3, p2

    .line 2912
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_19
    if-eqz v10, :cond_1a

    .line 2915
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catchall_0
    move-exception p2

    .line 2918
    iget p3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    :goto_c
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    if-ge p3, v0, :cond_1b

    .line 2919
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget v0, v0, p3

    .line 2920
    invoke-direct {p0, p1, v0, v10, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzkn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_1b
    if-eqz v10, :cond_1c

    .line 2923
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2924
    :cond_1c
    throw p2

    .line 2413
    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlk;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlk;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/zzhv$zze;->zzk:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 1161
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    .line 1164
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    .line 1167
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zze()Ljava/util/Iterator;

    move-result-object v0

    .line 1170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 1171
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 1172
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v8

    .line 1174
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 1176
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 1177
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/util/Map$Entry;)V

    .line 1178
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 1606
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1609
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1610
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v10

    .line 1611
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_3

    .line 1602
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1605
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(IJ)V

    goto/16 :goto_3

    .line 1598
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1601
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzf(II)V

    goto/16 :goto_3

    .line 1594
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1597
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(IJ)V

    goto/16 :goto_3

    .line 1590
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1593
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(II)V

    goto/16 :goto_3

    .line 1586
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1589
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(II)V

    goto/16 :goto_3

    .line 1582
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1585
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(II)V

    goto/16 :goto_3

    .line 1577
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1580
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 1581
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzgm;)V

    goto/16 :goto_3

    .line 1571
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1574
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1575
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_3

    .line 1567
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1570
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_3

    .line 1563
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1566
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IZ)V

    goto/16 :goto_3

    .line 1559
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1562
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(II)V

    goto/16 :goto_3

    .line 1555
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1558
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(IJ)V

    goto/16 :goto_3

    .line 1551
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1554
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(II)V

    goto/16 :goto_3

    .line 1547
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1550
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(IJ)V

    goto/16 :goto_3

    .line 1543
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1546
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IJ)V

    goto/16 :goto_3

    .line 1539
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1542
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IF)V

    goto/16 :goto_3

    .line 1535
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1538
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1533
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1524
    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1527
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1528
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v10

    .line 1529
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_3

    .line 1516
    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1519
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1520
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1508
    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1511
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1512
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1500
    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1503
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1504
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1492
    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1495
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1496
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1484
    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1487
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1488
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1476
    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1479
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1480
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1468
    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1471
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1472
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1460
    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1463
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1464
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1452
    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1455
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1456
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1444
    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1447
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1448
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1436
    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1439
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1440
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1428
    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1431
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1432
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1420
    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1423
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1424
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1412
    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1415
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1416
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1404
    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1407
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1408
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1396
    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1399
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1400
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1388
    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1391
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1392
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1380
    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1383
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1384
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1372
    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1375
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1376
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1364
    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1367
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1368
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1356
    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1359
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1360
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_3

    .line 1347
    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1350
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1351
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v10

    .line 1352
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_3

    .line 1339
    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1342
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1343
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_3

    .line 1331
    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1334
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1335
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1323
    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1326
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1327
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1315
    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1318
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1319
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1307
    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1310
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1311
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1299
    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1302
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1303
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1291
    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1294
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1295
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1283
    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1286
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1287
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1275
    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1278
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1279
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_3

    .line 1267
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1270
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1271
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v10

    .line 1272
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_3

    .line 1262
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1265
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1266
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(IJ)V

    goto/16 :goto_3

    .line 1257
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1260
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1261
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzf(II)V

    goto/16 :goto_3

    .line 1252
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1255
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1256
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(IJ)V

    goto/16 :goto_3

    .line 1247
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1250
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1251
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(II)V

    goto/16 :goto_3

    .line 1242
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1245
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1246
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(II)V

    goto/16 :goto_3

    .line 1237
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1240
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1241
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(II)V

    goto/16 :goto_3

    .line 1232
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1235
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 1236
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzgm;)V

    goto/16 :goto_3

    .line 1226
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1229
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1230
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_3

    .line 1222
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1225
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_3

    .line 1217
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1220
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result v8

    .line 1221
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IZ)V

    goto/16 :goto_3

    .line 1212
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1215
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1216
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(II)V

    goto :goto_3

    .line 1207
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1210
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1211
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(IJ)V

    goto :goto_3

    .line 1202
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1205
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1206
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(II)V

    goto :goto_3

    .line 1197
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1200
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1201
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(IJ)V

    goto :goto_3

    .line 1192
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1195
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1196
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IJ)V

    goto :goto_3

    .line 1187
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1190
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result v8

    .line 1191
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IF)V

    goto :goto_3

    .line 1182
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1185
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1186
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 1614
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/util/Map$Entry;)V

    .line 1615
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    .line 1617
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzj:Z

    if-eqz v0, :cond_f

    .line 1621
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_8

    .line 1622
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    .line 1624
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1626
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzd()Ljava/util/Iterator;

    move-result-object v0

    .line 1627
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 1628
    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v7, :cond_c

    .line 1630
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v9

    .line 1632
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    :goto_7
    if-eqz v8, :cond_a

    .line 1634
    iget-object v11, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 1635
    iget-object v11, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/util/Map$Entry;)V

    .line 1636
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v8, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 2064
    :pswitch_45
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2067
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2068
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v11

    .line 2069
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_8

    .line 2060
    :pswitch_46
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2063
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(IJ)V

    goto/16 :goto_8

    .line 2056
    :pswitch_47
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2059
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzf(II)V

    goto/16 :goto_8

    .line 2052
    :pswitch_48
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2055
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(IJ)V

    goto/16 :goto_8

    .line 2048
    :pswitch_49
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2051
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(II)V

    goto/16 :goto_8

    .line 2044
    :pswitch_4a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2047
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(II)V

    goto/16 :goto_8

    .line 2040
    :pswitch_4b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2043
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(II)V

    goto/16 :goto_8

    .line 2035
    :pswitch_4c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2038
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 2039
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzgm;)V

    goto/16 :goto_8

    .line 2029
    :pswitch_4d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2032
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2033
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_8

    .line 2025
    :pswitch_4e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2028
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_8

    .line 2021
    :pswitch_4f
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2024
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzf(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IZ)V

    goto/16 :goto_8

    .line 2017
    :pswitch_50
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2020
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(II)V

    goto/16 :goto_8

    .line 2013
    :pswitch_51
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2016
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(IJ)V

    goto/16 :goto_8

    .line 2009
    :pswitch_52
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2012
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(II)V

    goto/16 :goto_8

    .line 2005
    :pswitch_53
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2008
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(IJ)V

    goto/16 :goto_8

    .line 2001
    :pswitch_54
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2004
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IJ)V

    goto/16 :goto_8

    .line 1997
    :pswitch_55
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2000
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IF)V

    goto/16 :goto_8

    .line 1993
    :pswitch_56
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1996
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1991
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 1982
    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1985
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1986
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v11

    .line 1987
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_8

    .line 1974
    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1977
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1978
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1966
    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1969
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1970
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1958
    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1961
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1962
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1950
    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1953
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1954
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1942
    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1945
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1946
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1934
    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1937
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1938
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1926
    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1929
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1930
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1918
    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1921
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1922
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1910
    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1913
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1914
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1902
    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1905
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1906
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1894
    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1897
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1898
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1886
    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1889
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1890
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1878
    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1881
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1882
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1870
    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1873
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1874
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1862
    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1865
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1866
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1854
    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1857
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1858
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1846
    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1849
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1850
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1838
    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1841
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1842
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1830
    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1833
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1834
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1822
    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1825
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1826
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1814
    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1817
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1818
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_8

    .line 1805
    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1808
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1809
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v11

    .line 1810
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_8

    .line 1797
    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1800
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1801
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_8

    .line 1789
    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1792
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1793
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1781
    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1784
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1785
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1773
    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1776
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1777
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1765
    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1768
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1769
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1757
    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1760
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1761
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1749
    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1752
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1753
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1741
    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1744
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1745
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1733
    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1736
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1737
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzlk;Z)V

    goto/16 :goto_8

    .line 1725
    :pswitch_78
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1728
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1729
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v11

    .line 1730
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_8

    .line 1720
    :pswitch_79
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1723
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1724
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(IJ)V

    goto/16 :goto_8

    .line 1715
    :pswitch_7a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1718
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1719
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzf(II)V

    goto/16 :goto_8

    .line 1710
    :pswitch_7b
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1713
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1714
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(IJ)V

    goto/16 :goto_8

    .line 1705
    :pswitch_7c
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1708
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1709
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(II)V

    goto/16 :goto_8

    .line 1700
    :pswitch_7d
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1703
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1704
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzb(II)V

    goto/16 :goto_8

    .line 1695
    :pswitch_7e
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1698
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1699
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zze(II)V

    goto/16 :goto_8

    .line 1690
    :pswitch_7f
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1693
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 1694
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILcom/google/android/gms/internal/measurement/zzgm;)V

    goto/16 :goto_8

    .line 1684
    :pswitch_80
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1687
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1688
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)V

    goto/16 :goto_8

    .line 1680
    :pswitch_81
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1683
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    goto/16 :goto_8

    .line 1675
    :pswitch_82
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1678
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    .line 1679
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IZ)V

    goto/16 :goto_8

    .line 1670
    :pswitch_83
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1673
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1674
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(II)V

    goto :goto_8

    .line 1665
    :pswitch_84
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1668
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1669
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd(IJ)V

    goto :goto_8

    .line 1660
    :pswitch_85
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1663
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1664
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(II)V

    goto :goto_8

    .line 1655
    :pswitch_86
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1658
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1659
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc(IJ)V

    goto :goto_8

    .line 1650
    :pswitch_87
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1653
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1654
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IJ)V

    goto :goto_8

    .line 1645
    :pswitch_88
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1648
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result v9

    .line 1649
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(IF)V

    goto :goto_8

    .line 1640
    :pswitch_89
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1643
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1644
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzlk;->zza(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v8, :cond_e

    .line 2072
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/util/Map$Entry;)V

    .line 2073
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_9

    :cond_d
    move-object v8, v3

    goto :goto_9

    .line 2074
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    return-void

    .line 2076
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlk;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzgl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 3642
    iget-boolean v0, v15, Lcom/google/android/gms/internal/measurement/zzjk;->zzj:Z

    if-eqz v0, :cond_21

    .line 3644
    sget-object v9, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1e

    add-int/lit8 v3, v0, 0x1

    .line 3650
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3652
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3653
    iget v3, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    .line 3657
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(II)I

    move-result v0

    move v2, v0

    goto :goto_2

    .line 3658
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zzg(I)I

    move-result v0

    move v2, v0

    :goto_2
    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v25, v5

    move-object/from16 v29, v9

    const/16 v19, -0x1

    const/16 v20, 0x0

    goto/16 :goto_c

    .line 3662
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v10, v18, 0x14

    move/from16 p3, v5

    and-int v5, v1, v8

    move-object/from16 v18, v9

    int-to-long v8, v5

    const/16 v5, 0x11

    move/from16 v21, v1

    if-gt v10, v5, :cond_13

    add-int/lit8 v5, v2, 0x2

    .line 3670
    aget v0, v0, v5

    ushr-int/lit8 v5, v0, 0x14

    const/4 v1, 0x1

    shl-int v23, v1, v5

    const v5, 0xfffff

    and-int/2addr v0, v5

    if-eq v0, v7, :cond_5

    if-eq v7, v5, :cond_3

    move/from16 v20, v2

    int-to-long v1, v7

    move-object/from16 v7, v18

    .line 3675
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move/from16 v20, v2

    move-object/from16 v7, v18

    :goto_3
    if-eq v0, v5, :cond_4

    int-to-long v1, v0

    .line 3677
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_4
    move-object v2, v7

    move v7, v0

    goto :goto_4

    :cond_5
    move/from16 v20, v2

    move-object/from16 v2, v18

    :goto_4
    const/4 v0, 0x5

    packed-switch v10, :pswitch_data_0

    move/from16 v25, p3

    move-object v10, v2

    move v5, v4

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    goto/16 :goto_8

    :pswitch_0
    if-nez v3, :cond_6

    .line 3752
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v10

    .line 3753
    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    .line 3754
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgy;->zza(J)J

    move-result-wide v17

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v4, v2

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    move-wide v2, v8

    move/from16 v25, p3

    move-object v8, v4

    const v26, 0xfffff

    move-wide/from16 v4, v17

    .line 3755
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v8

    move v0, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v25, p3

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    move-object v10, v2

    move v5, v4

    goto/16 :goto_8

    :pswitch_1
    move/from16 v25, p3

    move-object v10, v2

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_7

    .line 3745
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3746
    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    .line 3747
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgy;->zze(I)I

    move-result v1

    .line 3748
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_7
    move v5, v4

    goto/16 :goto_8

    :pswitch_2
    move/from16 v25, p3

    move-object v10, v2

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_8

    .line 3740
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3741
    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_8
    move v5, v4

    goto/16 :goto_8

    :pswitch_3
    move/from16 v25, p3

    move-object v10, v2

    const/4 v0, 0x2

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_9

    .line 3735
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zze([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3736
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_9
    move v5, v4

    goto/16 :goto_8

    :pswitch_4
    move/from16 v25, p3

    move-object v10, v2

    const/4 v0, 0x2

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_b

    .line 3724
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    .line 3725
    invoke-static {v0, v12, v4, v13, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;[BIILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3726
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 3728
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3729
    :cond_a
    iget-object v2, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    .line 3730
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzhx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3731
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_b
    move v5, v4

    goto/16 :goto_8

    :pswitch_5
    move/from16 v25, p3

    move-object v10, v2

    const/4 v0, 0x2

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_d

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_c

    .line 3717
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    goto :goto_6

    .line 3718
    :cond_c
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3719
    :goto_6
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_d
    move v5, v4

    goto/16 :goto_8

    :pswitch_6
    move/from16 v25, p3

    move-object v10, v2

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_f

    .line 3711
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3712
    iget-wide v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    invoke-static {v14, v8, v9, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JZ)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_f
    move v5, v4

    goto/16 :goto_8

    :pswitch_7
    move/from16 v25, p3

    move-object v10, v2

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_10

    .line 3706
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_10
    move v5, v4

    goto/16 :goto_8

    :pswitch_8
    move/from16 v25, p3

    move-object v10, v2

    const/4 v0, 0x1

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_11

    .line 3701
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_11
    move v5, v4

    goto/16 :goto_8

    :pswitch_9
    move/from16 v25, p3

    move-object v10, v2

    move v5, v4

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_12

    .line 3696
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zza([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    .line 3697
    iget v1, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :pswitch_a
    move/from16 v25, p3

    move-object v10, v2

    move v5, v4

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-nez v3, :cond_12

    .line 3691
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/measurement/zzgi;->zzb([BILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v17

    .line 3692
    iget-wide v4, v11, Lcom/google/android/gms/internal/measurement/zzgl;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v0, v17

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :pswitch_b
    move/from16 v25, p3

    move-object v10, v2

    move v5, v4

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_12

    .line 3686
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzgi;->zzd([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v5, 0x4

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :pswitch_c
    move/from16 v25, p3

    move-object v10, v2

    move v5, v4

    const/4 v0, 0x1

    const v26, 0xfffff

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    if-ne v3, v0, :cond_12

    .line 3681
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/zzgi;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    or-int v6, v6, v23

    move v2, v7

    move-object v9, v10

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_12
    :goto_8
    move v2, v5

    move-object/from16 v29, v10

    const/16 v19, -0x1

    move/from16 v30, v20

    move/from16 v20, v7

    move/from16 v7, v30

    goto/16 :goto_c

    :cond_13
    move/from16 v25, p3

    move v5, v4

    move/from16 v20, v7

    move-object/from16 v4, v18

    const v26, 0xfffff

    move v7, v2

    const/16 v0, 0x1b

    if-ne v10, v0, :cond_17

    const/4 v0, 0x2

    if-ne v3, v0, :cond_16

    .line 3760
    invoke-virtual {v4, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzid;

    .line 3761
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzid;->zza()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3762
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0xa

    goto :goto_9

    :cond_14
    shl-int/lit8 v1, v1, 0x1

    .line 3765
    :goto_9
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzid;->zza(I)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0

    .line 3766
    invoke-virtual {v4, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v8, v0

    goto :goto_a

    :cond_15
    move-object v8, v0

    .line 3768
    :goto_a
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v5

    move-object/from16 v18, v4

    move/from16 v4, p4

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    .line 3769
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(Lcom/google/android/gms/internal/measurement/zzjv;I[BIILcom/google/android/gms/internal/measurement/zzid;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    move v2, v7

    move v6, v8

    move-object/from16 v9, v18

    move/from16 v7, v20

    move/from16 v1, v25

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v29, v4

    move v15, v5

    move/from16 v27, v6

    move/from16 v28, v20

    const/16 v19, -0x1

    move/from16 v20, v7

    goto/16 :goto_b

    :cond_17
    move-object/from16 v18, v4

    const/16 v0, 0x31

    if-gt v10, v0, :cond_19

    move/from16 v1, v21

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v3, v5

    move/from16 p3, v4

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v17

    move/from16 v27, v6

    move/from16 v6, v25

    move/from16 v28, v20

    move/from16 v20, v7

    move/from16 v7, p3

    move-wide/from16 v23, v8

    const v9, 0xfffff

    move/from16 v8, v20

    move-object/from16 v29, v18

    const/16 v19, -0x1

    move/from16 v18, v10

    move-wide/from16 v9, v21

    move/from16 v11, v18

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    .line 3774
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    if-ne v0, v15, :cond_18

    move v2, v0

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_c

    :cond_18
    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move/from16 v2, v20

    move/from16 v1, v25

    move/from16 v6, v27

    move/from16 v7, v28

    move-object/from16 v9, v29

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_19
    move/from16 p3, v3

    move v15, v5

    move/from16 v27, v6

    move-wide/from16 v23, v8

    move-object/from16 v29, v18

    move/from16 v28, v20

    move/from16 v1, v21

    const/16 v19, -0x1

    move/from16 v20, v7

    move/from16 v18, v10

    const/16 v0, 0x32

    move/from16 v9, v18

    if-ne v9, v0, :cond_1c

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p5

    .line 3779
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    if-ne v0, v15, :cond_1a

    move v2, v0

    move/from16 v6, v27

    move/from16 v7, v28

    goto :goto_c

    :cond_1a
    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move/from16 v2, v20

    move/from16 v1, v25

    move/from16 v6, v27

    move/from16 v7, v28

    move-object/from16 v9, v29

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1b
    :goto_b
    move v2, v15

    move/from16 v6, v27

    move/from16 v7, v28

    goto :goto_c

    :cond_1c
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v25

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p5

    .line 3784
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    if-ne v0, v15, :cond_1d

    move v2, v0

    move/from16 v6, v27

    move/from16 v7, v28

    .line 3787
    :goto_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzkq;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 3788
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzgi;->zza(I[BIILcom/google/android/gms/internal/measurement/zzkq;Lcom/google/android/gms/internal/measurement/zzgl;)I

    move-result v0

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move/from16 v2, v20

    move/from16 v1, v25

    move-object/from16 v9, v29

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move/from16 v2, v20

    move/from16 v1, v25

    move/from16 v6, v27

    move/from16 v7, v28

    move-object/from16 v9, v29

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v14, p1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1e
    move/from16 v27, v6

    move-object/from16 v29, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_1f

    int-to-long v1, v7

    move/from16 v6, v27

    move-object/from16 v4, v29

    move-object/from16 v3, p1

    .line 3791
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, p4

    goto :goto_d

    :cond_1f
    move/from16 v4, p4

    :goto_d
    if-ne v0, v4, :cond_20

    return-void

    .line 3793
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zzg()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object v0

    throw v0

    :cond_21
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 3795
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzgl;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_15

    .line 252
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 326
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 327
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 328
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 330
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 331
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 323
    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 324
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 320
    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 321
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1

    .line 315
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 317
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 312
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 309
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 306
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 303
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 300
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 301
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 297
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 298
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 293
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 294
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 289
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 290
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 291
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 285
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 286
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 287
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 282
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 283
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 279
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 280
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 276
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 277
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 273
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 274
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_e
    const/4 v3, 0x0

    goto :goto_1

    .line 270
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 271
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_f
    const/4 v3, 0x0

    goto :goto_1

    .line 267
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 268
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_10
    const/4 v3, 0x0

    goto :goto_1

    .line 263
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 264
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 265
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_11
    const/4 v3, 0x0

    goto :goto_1

    .line 259
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/zzjk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 260
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 261
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_12
    const/4 v3, 0x0

    :cond_13
    :goto_1
    if-nez v3, :cond_14

    return v1

    :cond_14
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 337
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 341
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_17

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object p2

    .line 344
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzho;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzj:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    .line 574
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 576
    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4

    .line 577
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 582
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 587
    sget-object v14, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzhp;

    .line 588
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhp;->zza()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzhp;->zzb:Lcom/google/android/gms/internal/measurement/zzhp;

    .line 589
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhp;->zza()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 590
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    :cond_0
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_1

    .line 839
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 841
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 842
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    .line 843
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzjg;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 837
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 838
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 835
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 836
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 833
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 834
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 831
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 832
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhf;->zzj(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 829
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 830
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzk(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 827
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 828
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 823
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 825
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 826
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 819
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 820
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 821
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 813
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 814
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 815
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v6, :cond_1

    .line 816
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 817
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 811
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 812
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 809
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 810
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhf;->zzi(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 807
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 808
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 805
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 806
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 803
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 804
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 801
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 802
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzd(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 799
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 800
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 797
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    .line 798
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ID)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 793
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 794
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(I)Ljava/lang/Object;

    move-result-object v6

    .line 795
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zziz;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 790
    :pswitch_13
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    .line 791
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 783
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 784
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 787
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 788
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 776
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 777
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 780
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 781
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 769
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 770
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 773
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 774
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 762
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 763
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 766
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 767
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 755
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 756
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 759
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 760
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 748
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 749
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 752
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 753
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 741
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 742
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 745
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 746
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 734
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 735
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 738
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 739
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 727
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 728
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 731
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 732
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 720
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 721
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 724
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 725
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 713
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 714
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 717
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 718
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 706
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 707
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 710
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 711
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 699
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 700
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 703
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 704
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 692
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 693
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 696
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v3

    .line 697
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 689
    :pswitch_22
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 685
    :pswitch_23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 686
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 682
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 680
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 677
    :pswitch_26
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 678
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 673
    :pswitch_27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 674
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 669
    :pswitch_28
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 670
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 665
    :pswitch_29
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    .line 666
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 662
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 660
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 658
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 656
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 653
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 654
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 650
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 647
    :pswitch_30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 644
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 642
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 637
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 639
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 640
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    .line 641
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzjg;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 634
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 636
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 632
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 633
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 630
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 631
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 628
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 629
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhf;->zzj(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 626
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzk(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 624
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 625
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 620
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 621
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 622
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 616
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 617
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 618
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 610
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 611
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 612
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v6, :cond_2

    .line 613
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 614
    :cond_2
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_1

    .line 608
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 609
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_1

    .line 606
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 607
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/measurement/zzhf;->zzi(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_1

    .line 604
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 605
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_1

    .line 602
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_1

    .line 599
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 601
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_1

    .line 597
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 598
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzd(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_1

    .line 595
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 596
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_1

    .line 593
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    .line 594
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ID)I

    move-result v3

    add-int/2addr v13, v3

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 845
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 848
    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v12, 0x0

    .line 851
    :goto_2
    iget-object v13, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v13, v13

    if-ge v3, v13, :cond_3c

    .line 852
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v13

    .line 854
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_7

    add-int/lit8 v11, v3, 0x2

    .line 861
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v11, v11, 0x14

    shl-int v11, v8, v11

    if-eq v14, v6, :cond_6

    int-to-long v8, v14

    .line 866
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_3

    :cond_6
    move v14, v6

    :goto_3
    move v6, v14

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1135
    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1137
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 1138
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v8

    .line 1139
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzjg;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1133
    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1134
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_9
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1131
    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1132
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_a
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1129
    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_b

    const-wide/16 v8, 0x0

    .line 1130
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_b
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1127
    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    .line 1128
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzj(II)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1125
    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1126
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzk(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_d
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1123
    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1124
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1119
    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1121
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 1122
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1115
    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1116
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1117
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_10
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1109
    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1110
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1111
    instance-of v8, v4, Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v8, :cond_11

    .line 1112
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1113
    :cond_11
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1107
    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    .line 1108
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IZ)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_13
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1105
    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    .line 1106
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzi(II)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_14
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1103
    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_15

    const-wide/16 v8, 0x0

    .line 1104
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1101
    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1102
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_16
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1099
    :pswitch_53
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1100
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_17
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1097
    :pswitch_54
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1098
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzjk;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzd(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_18
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1095
    :pswitch_55
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    .line 1096
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IF)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_19
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1093
    :pswitch_56
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-wide/16 v8, 0x0

    .line 1094
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ID)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_1a
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1089
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    .line 1090
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(I)Ljava/lang/Object;

    move-result-object v9

    .line 1091
    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zziz;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1085
    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1086
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v8

    .line 1087
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1078
    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1079
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_1b

    .line 1082
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1083
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_1b
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1071
    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1072
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_1c

    .line 1075
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1076
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_1c
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1064
    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1065
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_1d

    .line 1068
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1069
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_1d
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1057
    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1058
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_1e

    .line 1061
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1062
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_1e
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1050
    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1051
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_1f

    .line 1054
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1055
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_1f
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1043
    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1044
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_20

    .line 1047
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1048
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_20
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1036
    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1037
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_21

    .line 1040
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1041
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_21
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1029
    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1030
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_22

    .line 1033
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1034
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_22
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1022
    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1023
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_23

    .line 1026
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1027
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_23
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1015
    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1016
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_24

    .line 1019
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1020
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_24
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1008
    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1009
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_25

    .line 1012
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1013
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_25
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 1001
    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1002
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1005
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 1006
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_26
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 994
    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 995
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_27

    .line 998
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 999
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_27
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 987
    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 988
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_28

    .line 991
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(I)I

    move-result v8

    .line 992
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_28
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 983
    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 984
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzc(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_68
    const/4 v10, 0x0

    .line 979
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 980
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzg(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_69
    const/4 v10, 0x0

    .line 975
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 976
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_6a
    const/4 v10, 0x0

    .line 971
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 972
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_6b
    const/4 v10, 0x0

    .line 967
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 968
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzd(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_6c
    const/4 v10, 0x0

    .line 963
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 964
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzf(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 959
    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 960
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 955
    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v8

    .line 956
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 952
    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 948
    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 949
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzj(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_71
    const/4 v10, 0x0

    .line 944
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 945
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_72
    const/4 v10, 0x0

    .line 940
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 941
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_73
    const/4 v10, 0x0

    .line 936
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 937
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zze(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_74
    const/4 v10, 0x0

    .line 932
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 933
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzb(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_75
    const/4 v10, 0x0

    .line 928
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 929
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_76
    const/4 v10, 0x0

    .line 924
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 925
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzh(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_77
    const/4 v10, 0x0

    .line 920
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 921
    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/measurement/zzjx;->zzi(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_78
    and-int v4, v12, v11

    if-eqz v4, :cond_29

    .line 916
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzjg;

    .line 917
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v8

    .line 918
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzjg;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_29
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_79
    and-int v4, v12, v11

    if-eqz v4, :cond_2a

    .line 913
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_2a
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_7a
    and-int v4, v12, v11

    if-eqz v4, :cond_2b

    .line 911
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_2b
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_7b
    and-int v4, v12, v11

    if-eqz v4, :cond_2c

    const-wide/16 v8, 0x0

    .line 909
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzh(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_2c
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_7c
    and-int v4, v12, v11

    if-eqz v4, :cond_2d

    const/4 v4, 0x0

    .line 907
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzj(II)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_2d
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_7d
    and-int v4, v12, v11

    if-eqz v4, :cond_2e

    .line 905
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzk(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_2e
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_7e
    and-int v4, v12, v11

    if-eqz v4, :cond_2f

    .line 903
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(II)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_2f
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_7f
    and-int v4, v12, v11

    if-eqz v4, :cond_30

    .line 899
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgm;

    .line 900
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_30
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_80
    and-int v4, v12, v11

    if-eqz v4, :cond_31

    .line 895
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 896
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjv;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_31
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_81
    and-int v4, v12, v11

    if-eqz v4, :cond_33

    .line 889
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 890
    instance-of v8, v4, Lcom/google/android/gms/internal/measurement/zzgm;

    if-eqz v8, :cond_32

    .line 891
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzc(ILcom/google/android/gms/internal/measurement/zzgm;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    .line 892
    :cond_32
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_33
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_82
    and-int v4, v12, v11

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    .line 887
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IZ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_34
    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v11

    if-eqz v8, :cond_35

    const/4 v10, 0x0

    .line 885
    invoke-static {v15, v10}, Lcom/google/android/gms/internal/measurement/zzhf;->zzi(II)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_35
    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :pswitch_84
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v11

    if-eqz v8, :cond_36

    const-wide/16 v13, 0x0

    .line 883
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/measurement/zzhf;->zzg(IJ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :cond_36
    const-wide/16 v13, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :pswitch_85
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_37

    .line 881
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzf(II)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_37
    const-wide/16 v7, 0x0

    goto :goto_5

    :pswitch_86
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_38

    .line 879
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zze(IJ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_38
    const-wide/16 v7, 0x0

    goto :goto_5

    :pswitch_87
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_39

    .line 877
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzhf;->zzd(IJ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_39
    const-wide/16 v7, 0x0

    goto :goto_5

    :pswitch_88
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v11

    if-eqz v8, :cond_3a

    const/4 v8, 0x0

    .line 875
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(IF)I

    move-result v9

    add-int/2addr v5, v9

    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_3a
    const-wide/16 v7, 0x0

    goto :goto_5

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v11

    if-eqz v9, :cond_3b

    const-wide/16 v7, 0x0

    .line 873
    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzhf;->zzb(ID)I

    move-result v11

    add-int/2addr v5, v11

    goto :goto_5

    :cond_3b
    const-wide/16 v7, 0x0

    :goto_5
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_3c
    const/4 v10, 0x0

    .line 1141
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1142
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v2, :cond_3f

    .line 1143
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v1

    const/4 v2, 0x0

    .line 1145
    :goto_6
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzka;->zzc()I

    move-result v3

    if-ge v10, v3, :cond_3d

    .line 1146
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzka;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 1147
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzho;->zza(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1149
    :cond_3d
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzho;->zza:Lcom/google/android/gms/internal/measurement/zzka;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzka;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1150
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzho;->zza(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_7

    :cond_3e
    add-int/2addr v5, v2

    :cond_3f
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 459
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 464
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 533
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 530
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 532
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 528
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 525
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 527
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 523
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Lcom/google/android/gms/internal/measurement/zziz;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 521
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 519
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 516
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 513
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 510
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 507
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 504
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 501
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 498
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 496
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 493
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 490
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JZ)V

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 487
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 484
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 481
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JI)V

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 478
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 475
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JJ)V

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 472
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzd(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JF)V

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 469
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JD)V

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 456
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3797
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzn:I

    if-ge v0, v1, :cond_1

    .line 3798
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3801
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3803
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/zziz;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3805
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3807
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzp:Lcom/google/android/gms/internal/measurement/zziq;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3809
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzq:Lcom/google/android/gms/internal/measurement/zzkn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzd(Ljava/lang/Object;)V

    .line 3810
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_3

    .line 3811
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zzc(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 3850
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzm:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_d

    .line 3851
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzl:[I

    aget v12, v2, v10

    .line 3853
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    aget v13, v2, v12

    .line 3855
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd(I)I

    move-result v14

    .line 3856
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzc:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_1

    if-eq v3, v8, :cond_0

    .line 3862
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjk;->zzb:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move/from16 v17, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 3866
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    :cond_3
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_b

    const/16 v1, 0x11

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 3892
    :pswitch_0
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 3894
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zzb(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 3895
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3896
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zzb(I)Ljava/lang/Object;

    move-result-object v1

    .line 3897
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzs:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/zziz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;

    move-result-object v1

    .line 3898
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzix;->zzc:Lcom/google/android/gms/internal/measurement/zzle;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzle;->zza()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzlh;->zzi:Lcom/google/android/gms/internal/measurement/zzlh;

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    .line 3900
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    .line 3902
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjr;->zza()Lcom/google/android/gms/internal/measurement/zzjr;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzjr;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    .line 3903
    :cond_5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/measurement/zzjv;->zzd(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v11, 0x0

    :cond_6
    if-nez v11, :cond_c

    return v9

    .line 3888
    :cond_7
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3889
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjv;)Z

    move-result v0

    if-nez v0, :cond_c

    return v9

    :cond_8
    :pswitch_1
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 3877
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3878
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3879
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v1

    const/4 v2, 0x0

    .line 3880
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 3881
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3882
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/zzjv;->zzd(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-nez v11, :cond_c

    return v9

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 3871
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3872
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(I)Lcom/google/android/gms/internal/measurement/zzjv;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzjv;)Z

    move-result v0

    if-nez v0, :cond_c

    return v9

    :cond_c
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 3910
    :cond_d
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzh:Z

    if-eqz v0, :cond_e

    .line 3911
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzjk;->zzr:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzho;->zzf()Z

    move-result v0

    if-nez v0, :cond_e

    return v9

    :cond_e
    return v11

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
