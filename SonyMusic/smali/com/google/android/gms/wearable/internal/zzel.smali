.class public abstract Lcom/google/android/gms/wearable/internal/zzel;
.super Lcom/google/android/gms/internal/wearable/zzb;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/zzek;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wearable/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 16
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdt;

    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdt;)V

    throw p4

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdv;

    .line 14
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdv;)V

    throw p4

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdr;

    .line 11
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdr;)V

    throw p4

    .line 79
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfy;

    .line 80
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzfy;)V

    throw p4

    .line 76
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzf;

    .line 77
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzf;)V

    throw p4

    .line 73
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdi;

    .line 74
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdi;)V

    throw p4

    .line 70
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdk;

    .line 71
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdk;)V

    throw p4

    .line 61
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbp;

    .line 62
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzbp;)V

    throw p4

    .line 58
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbn;

    .line 59
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzbn;)V

    throw p4

    .line 55
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdo;

    .line 56
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdo;)V

    throw p4

    .line 52
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdm;

    .line 53
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdm;)V

    throw p4

    .line 49
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbt;

    .line 50
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zzb(Lcom/google/android/gms/wearable/internal/zzbt;)V

    throw p4

    .line 46
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzbt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbt;

    .line 47
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzbt;)V

    throw p4

    .line 43
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfq;

    .line 44
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzfq;)V

    throw p4

    .line 7
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdy;

    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdy;)V

    throw p4

    .line 67
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzge;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzge;

    .line 68
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzge;)V

    throw p4

    .line 64
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 65
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 40
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzea;

    .line 41
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzea;)V

    throw p4

    .line 37
    :pswitch_13
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzeg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzeg;

    .line 38
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzeg;)V

    throw p4

    .line 34
    :pswitch_14
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzee;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzee;

    .line 35
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzee;)V

    throw p4

    .line 31
    :pswitch_15
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzga;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzga;

    .line 32
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzga;)V

    throw p4

    .line 28
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdg;

    .line 29
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdg;)V

    goto :goto_0

    .line 25
    :pswitch_17
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 26
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zzb(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 83
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    .line 22
    :pswitch_18
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzec;

    .line 23
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzec;)V

    throw p4

    .line 19
    :pswitch_19
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfu;

    .line 20
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzfu;)V

    throw p4

    .line 4
    :pswitch_1a
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzdw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzdw;

    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzek;->zza(Lcom/google/android/gms/wearable/internal/zzdw;)V

    throw p4

    :pswitch_data_0
    .packed-switch 0x2
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
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
