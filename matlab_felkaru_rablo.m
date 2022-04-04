%Erme, napok, penz.
ermek = 100;
penz = -(ermek * 100);
napok = 20;
penzek2 = 0;
atl = 0;
penzek = [];


alma = 0;
szolo = 0;
narancs = 0;
harang = 0;
patko = 0;
gyemant = 0;
hetes = 0;

alma_harom = 0;
szolo_harom = 0;
narancs_harom = 0;
harang_harom = 0;
patko_harom = 0;
gyemant_harom = 0;
hetes_harom = 0;

%A napok es ermek szama alapjan futtatjuk a programot, mely soran egy random generalt szam adja majd a szimbolumot.
for i=1:napok
    for j=1:ermek

        e_kerek = randperm(20, 1);
        if e_kerek >= 0 && e_kerek <= 4
           e_kerek = 1;
        elseif e_kerek > 4 && e_kerek <= 8
           e_kerek = 2;
        elseif e_kerek > 8 && e_kerek <= 11
           e_kerek = 3;
        elseif e_kerek > 11 && e_kerek <= 14
           e_kerek = 4;
        elseif e_kerek > 14 && e_kerek <= 17
           e_kerek = 5;
        elseif e_kerek > 17 && e_kerek <= 19
           e_kerek = 6;
        elseif e_kerek > 19
           e_kerek = 7;
        end

        m_kerek = randperm(20, 1);
        if m_kerek >= 0 && m_kerek <= 4
           m_kerek = 1;
        elseif m_kerek > 4 && m_kerek <= 7
           m_kerek = 2;
        elseif m_kerek > 7 && m_kerek <= 9
           m_kerek = 3;
        elseif m_kerek > 9 && m_kerek <= 13
           m_kerek = 4;
        elseif m_kerek > 13 && m_kerek <= 17
           m_kerek = 5;
        elseif m_kerek > 17 && m_kerek <= 19
           m_kerek = 6;
        elseif m_kerek > 19
           m_kerek = 7;
		end

        h_kerek = randperm(20, 1);
        if h_kerek >= 0 && h_kerek <= 4
           h_kerek = 1;
        elseif h_kerek > 4 && h_kerek <= 7
           h_kerek = 2;
        elseif h_kerek > 7 && h_kerek <= 11
           h_kerek = 3;
        elseif h_kerek > 11 && h_kerek <= 14
           h_kerek = 4;
        elseif h_kerek > 14 && h_kerek <= 17
           h_kerek = 5;
        elseif h_kerek > 17 && h_kerek <= 19
           h_kerek = 6;
        elseif h_kerek > 19
           h_kerek = 7;
		end

        %Szimbolum egyezosegeket keres. 
        if e_kerek == m_kerek && e_kerek ~= h_kerek
            if e_kerek == 1
                alma = alma + 1;
                penz = penz + 25;
            elseif e_kerek == 2
                szolo = szolo + 1;
                penz = penz + 50;
            elseif e_kerek == 3
                narancs = narancs + 1;
                penz = penz + 100;
            elseif e_kerek == 4
                harang = harang + 1;
                penz = penz + 100;
            elseif e_kerek == 5
                patko = patko + 1;
                penz = penz + 100;
            elseif e_kerek == 6
                gyemant = gyemant + 1;
                penz = penz + 300;
            elseif e_kerek == 7
                hetes = hetes + 1;
                penz = penz + 300;
            end
        end

        alma=alma+1;
        if e_kerek == h_kerek && e_kerek ~= m_kerek
            if e_kerek == 1
                penz = penz + 25;
            elseif e_kerek == 2
                szolo = szolo + 1;
                penz = penz + 50;
            elseif e_kerek == 3
                narancs = narancs + 1;
                penz = penz + 100;
            elseif e_kerek == 4
                harang = harang + 1;
                penz = penz + 100;
            elseif e_kerek == 5
                patko = patko + 1;
                penz = penz + 100;
            elseif e_kerek == 6
                gyemant = gyemant + 1;
                penz = penz + 300;
            elseif e_kerek == 7
                hetes = hetes + 1;
                penz = penz + 300;
            end
        end

        if m_kerek == h_kerek && m_kerek ~= e_kerek
            if e_kerek == 1
                alma = alma + 1;
                penz = penz + 25;
            elseif e_kerek == 2
                szolo = szolo + 1;
                penz = penz + 50;
            elseif e_kerek == 3
                narancs = narancs + 1;
                penz = penz + 100;
            elseif e_kerek == 4
                harang = harang + 1;
                penz = penz + 100;
            elseif e_kerek == 5
                patko = patko + 1;
                penz = penz + 100;
            elseif e_kerek == 6
                gyemant = gyemant + 1;
                penz = penz + 300;
            elseif e_kerek == 7
                hetes = hetes + 1;
                penz = penz + 300;
            end
        end

        %Majd megnezzuk mindharom kerek szombolumai azonosak-e.
        if e_kerek == m_kerek && e_kerek == h_kerek && m_kerek == h_kerek
            if e_kerek == 1
                alma_harom = alma_harom + 1;
                penz = penz + 200;
            elseif e_kerek == 2
                szolo_harom = szolo_harom + 1;
                penz = penz + 400;
            elseif e_kerek == 3
                narancs_harom = narancs_harom + 1;
                penz = penz + 600;
            elseif e_kerek == 4
                harang_harom = harang_harom + 1;
                penz = penz + 1200;
            elseif e_kerek == 5
                patko_harom = patko_harom + 1;
                penz = penz + 2000;
            elseif e_kerek == 6
                gyemant_harom = gyemant_harom + 1;
                penz = penz + 5000;
            elseif e_kerek == 7
                hetes_harom = hetes_harom + 1;
                penz = penz + 100000;
            end
        end
    end
    
    penzek2 =  penzek2 + penz;
    penzek(end+1) = penz;
    penz = -(ermek * 100);
end

%Egy tombbe helyezzuk az eredmenyeket.
eredmeny_harom = [alma_harom szolo_harom narancs_harom harang_harom patko_harom gyemant_harom hetes_harom];
eredmeny = [alma szolo narancs harang patko gyemant hetes];

%Kiiras.
figure(1)
bar(eredmeny_harom, .40, "blue");
xticks(1:7);
xticklabels( {'Alma' , 'Szolo' , 'Narancs' , 'Harang' , 'Patko' , 'Gyemant' , 'Hetes'} );
ylabel('Triplak szama');
xlabel('A szimbolumok nevei');
text(1:length(eredmeny_harom),eredmeny_harom,num2str(eredmeny_harom'),'vert','bottom','horiz','center'); 
box off;

figure(2)
bar(eredmeny, .40, "cyan");
xticks(1:7);
xticklabels( {'Alma' , 'Szolo' , 'Narancs' , 'Harang' , 'Patko'  , 'Gyemant' , 'Hetes'} );
ylabel('Duplak szama');
xlabel('A szimbolumok nevei');
text(1:length(eredmeny),eredmeny,num2str(eredmeny'),'vert','bottom','horiz','center'); 
box off;

figure(3)
bar(penzek, "green");
xticks(1:napok);
ylabel('A nyereseg es veszteseg');
xlabel('Datum');
text(1:length(penzek),penzek,num2str(penzek'),'vert','bottom','horiz','center'); 
box off;

atl = floor(sum(penzek)/length(penzek));

%Eredmeny.
if penzek2 >=0
    fprintf('A %d nap utani nyereseg: %d \n', napok, penzek2);
else
    fprintf('A %d nap utani veszteseg: %d \n', napok, penzek2);
end

if penzek2 >=0
    fprintf('Azatlagos napi nyereseg: %d \n', atl);
    fprintf('\n');
else
    fprintf('Az atlagos napi veszteseg: %d \n', atl);
    fprintf('\n');
end