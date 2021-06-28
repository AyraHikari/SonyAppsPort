.class public abstract Lcom/google/android/gms/wearable/internal/zzen;
.super Lcom/google/android/gms/internal/wearable/zzb;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/zzem;


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 28
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzi;

    .line 29
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zza(Lcom/google/android/gms/wearable/internal/zzi;)V

    goto :goto_0

    .line 25
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzah;

    .line 26
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zza(Lcom/google/android/gms/wearable/internal/zzah;)V

    goto :goto_0

    .line 22
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzaw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzaw;

    .line 23
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zza(Lcom/google/android/gms/wearable/internal/zzaw;)V

    goto :goto_0

    .line 19
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzl;

    .line 20
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zza(Lcom/google/android/gms/wearable/internal/zzl;)V

    goto :goto_0

    .line 16
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->onConnectedNodes(Ljava/util/List;)V

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfo;

    .line 14
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zzb(Lcom/google/android/gms/wearable/internal/zzfo;)V

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfo;

    .line 11
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zza(Lcom/google/android/gms/wearable/internal/zzfo;)V

    goto :goto_0

    .line 7
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/wearable/internal/zzfe;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfe;

    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zza(Lcom/google/android/gms/wearable/internal/zzfe;)V

    goto :goto_0

    .line 4
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/wearable/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/wearable/internal/zzem;->zza(Lcom/google/android/gms/common/data/DataHolder;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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
